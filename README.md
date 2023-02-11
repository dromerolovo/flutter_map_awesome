# Awesome extensions for flutter_map

A versatile mapping package for Flutter, based off of ['leaflet.js'](https://leafletjs.com/). Simple and easy to learn, yet completely customizable and configurable, it's the best choice for mapping in your Flutter app.

[![Pub.dev](https://img.shields.io/pub/v/flutter_map.svg?label=Latest+Version)](https://pub.dev/packages/flutter_map) [![Checks & Tests](https://badgen.net/github/checks/fleaflet/flutter_map?label=Checks+%26+Tests&color=orange)](https://github.com/fleaflet/flutter_map/actions?query=branch%3Amaster) [![points](https://img.shields.io/pub/points/flutter_map?logo=flutter)](https://pub.dev/packages/flutter_map/score)  
[![stars](https://badgen.net/github/stars/fleaflet/flutter_map?label=stars&color=green&icon=github)](https://github.com/fleaflet/flutter_map/stargazers) [![likes](https://img.shields.io/pub/likes/flutter_map?logo=flutter)](https://pub.dev/packages/flutter_map/score)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[![Open Issues](https://badgen.net/github/open-issues/fleaflet/flutter_map?label=Open+Issues&color=green)](https://GitHub.com/fleaflet/flutter_map/issues) [![Open PRs](https://badgen.net/github/open-prs/fleaflet/flutter_map?label=Open+PRs&color=green)](https://GitHub.com/fleaflet/flutter_map/pulls)

---

## Extensions

### Support for gradients in polygons

      Polygon(
        points: [...],
        isFilled: true,
        gradient: const LinearGradient(
          begin: Alignment(-3, 3),
          end: Alignment(3, -3),
          colors: [...]
        )
      )
