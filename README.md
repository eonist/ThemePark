# ThemePark
![mit](https://img.shields.io/badge/License-MIT-brightgreen.svg)
![platform](https://img.shields.io/badge/Platform-iOS-blue.svg)
![platform](https://img.shields.io/badge/Platform-macOS-blue.svg)
![Lang](https://img.shields.io/badge/Language-Swift%205.0-orange.svg)
[![SPM](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/apple/swift)
[![codebeat badge](https://codebeat.co/badges/947d25d2-2794-4a19-a25c-95f0d501e2e7)](https://codebeat.co/projects/github-com-eonist-themepark-master)
[![SwiftLint Sindre](https://img.shields.io/badge/SwiftLint-Sindre-hotpink.svg)](https://github.com/sindresorhus/swiftlint-sindre)

<img width="222" alt="img" src="https://rawgit.com/stylekit/img/master/ThemeLib.gif">  

### What is it
Theme library for iOS

### How does it work
- Watches for changes 💥
- Live theme updates while the app is running 👌
- Traverses the entire UIView hierarchy with one call 🤯
- Animated transitions 🎬
- Small foot-print 🗜
- Store styles in json or struct

### How do I get it
- SPM `"github.com/eonist/ThemePark"` branch: `"master"`
- Manual Open `.xcodeproj`

### Topology:
    .
    ├── assets.bundle         # .json theme files
    ├── theme                 # Customize your theme structure
    ├── ThemePark             # iOS app code
    ├── ThemePark-example     # macOS app code
    └── src                   # Core-src
         ├── common           # Util-Extensions
         └── core             # Core code
               ├── decode     # Decode JSON to Color and Font
               ├── util       # Apply theme to components
               └── themeable  # Components that are themeable

### Todo:
- Clean up the code ✅
- Add OliverAtkinsons (from swift-lang) nifty JSON Transformer trick: [http://eon.codes/blog/2018/04/12/advance-json-parsing-pt1/](http://eon.codes/blog/2018/04/12/advance-json-parsing-pt1/) 👊 ✅
