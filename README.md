# ThemePark
![mit](https://img.shields.io/badge/License-MIT-brightgreen.svg)
![platform](https://img.shields.io/badge/Platform-iOS/macOS-blue.svg)
![Lang](https://img.shields.io/badge/Language-Swift%205.0-orange.svg)
[![SPM](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/apple/swift)
[![SwiftLint Sindre](https://img.shields.io/badge/SwiftLint-Sindre-hotpink.svg)](https://github.com/sindresorhus/swiftlint-sindre)
[![codebeat badge](https://codebeat.co/badges/947d25d2-2794-4a19-a25c-95f0d501e2e7)](https://codebeat.co/projects/github-com-eonist-themepark-master)
![Swift](https://github.com/eonist/ThemePark/workflows/Swift/badge.svg)

<img width="222" alt="img" src="https://rawgit.com/stylekit/img/master/ThemeLib.gif">  

### What is it
Theme library for iOS & Mac

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

### Examples:

**Change theme live / dynamically in the app**
```swift
@IBAction private func onSwitchChange(_ sender: UISwitch) {
      CustomTheme.currentType = sender.isOn ? CustomTheme.ThemeType.dark.rawValue : CustomTheme.ThemeType.light.rawValue
      CustomTheme.theme = CustomTheme.getTheme(theme: CustomTheme.currentType)
      ThemeUtil.transition(self)
    }
}
```

**Add theme in controller**
```swift
class Main: UITableViewController {
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ThemeUtil.apply(self)
    }
}
```

**Hot load theme / see your theme changes be applied live**
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
   // Set the customTheme, before components ask Theme for styling
   CustomTheme.setTheme(themeType: CustomTheme.ThemeType.light.rawValue) // set init theme
   // Watches for changes, super useful for testing styling by just changing the json doc
   FileWatcher(Bundle.main.resourcePath!+"/assets.bundle/dark.json") {
      Swift.print("the file was modified")
      if let controller = UIApplication.shared.topMostViewController() {
         CustomTheme.theme = CustomTheme.getTheme(theme: CustomTheme.currentType)//update the theme
         ThemeUtil.apply(controller)
      }
   }.start()
   return true
}
```

### Todo:
- Clean up the code ✅
- Add OliverAtkinsons (from swift-lang) nifty JSON Transformer trick: [http://eon.codes/blog/2018/04/12/advance-json-parsing-pt1/](http://eon.codes/blog/2018/04/12/advance-json-parsing-pt1/) 👊 ✅
- Add json and file deps
