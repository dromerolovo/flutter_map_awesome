import 'dart:ui' as ui;
import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(-12.103751, -76.984455),
                zoom: 13,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                ),
                PolylineLayer(
                  polylines: [
                    Polyline(
                      strokeWidth: 5,
                      gradientColors: [
                        Colors.orange,
                        Colors.blue,
                        Colors.yellow
                      ],
                      points: [
                        LatLng(-12.100970, -76.998797),
                        LatLng(-12.100908, -76.998129),
                        LatLng(-12.101781, -77.002670)
                      ]
                    )
                  ],
                ),
                PolygonLayer(
                  polygons: [
                    Polygon(
                      holePointsList: [
                        [
                          LatLng(-12.099993, -76.985718),
                          LatLng(-12.102920, -76.986018),
                          LatLng(-12.102836, -76.984602),
                          LatLng(-12.102522, -76.984602),
                          LatLng(-12.102375, -76.983229),
                          LatLng(-12.100319, -76.983315),
                          LatLng(-12.099993, -76.985718),

                        ]
                      ],
                      borderStrokeWidth: 1,
                      points: [
                        LatLng(-12.102593, -76.990390),
                        LatLng(-12.103559, -76.989085),
                        LatLng(-12.107674, -76.988438),
                        LatLng(-12.107831, -76.984729),
                        LatLng(-12.103690, -76.984977),
                        LatLng(-12.103371, -76.980168),
                        LatLng(-12.097336, -76.980948),
                        LatLng(-12.096502, -76.985527),
                        LatLng(-12.096562, -76.987751),
                        LatLng(-12.096048, -76.989258),
                        LatLng(-12.102593, -76.990390)
                      ],
                      isFilled: true,
                      isDotted: true,
                      gradient: const LinearGradient(
                        begin: Alignment(-3, 3),
                        end: Alignment(3, -3),
                        colors: [
                          Color.fromRGBO(250, 255, 0, 0.3),
                          Color.fromRGBO(255, 72, 215, 1)
                        ],
                      )
                    ),
                    Polygon(
                      points: [
                        LatLng(-12.094849, -76.999916),
                        LatLng(-12.098216, -76.999916),
                        LatLng(-12.098178, -76.995252),
                        LatLng(-12.096100, -76.995390),
                        LatLng(-12.094849, -76.999916),
                      ],
                      isFilled: true,
                      gradient: RadialGradient(
                        radius: 0.8,
                        focalRadius: 1,
                        colors: [
                          Colors.cyan.withOpacity(0.8),
                          Colors.pink.withOpacity(0.8)
                        ],
                      )
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
