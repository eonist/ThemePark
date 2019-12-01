import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
   @IBOutlet weak var window: NSWindow!
   func applicationDidFinishLaunching(_ aNotification: Notification) {
      CustomTheme.setTheme(themeType: CustomTheme.ThemeType.light.rawValue)//update the theme
//      Swift.print("Theme.theme.color.background:  \(Theme.theme.color.background)")
//      Swift.print("Theme.theme.color.font.highlight:  \(Theme.theme.color.font.highlight)")
//      Swift.print("Theme.theme.font.system:  \(Theme.theme.font.system)")
   }
}
