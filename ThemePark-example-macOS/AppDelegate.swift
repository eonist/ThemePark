
import Cocoa
import ThemePark_macOS

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

   @IBOutlet weak var window: NSWindow!
   func applicationDidFinishLaunching(_ aNotification: Notification) {
//      Swift.print("\(NSFont.systemFont(ofSize: 20))")
//      Swift.print("\(NSFont.boldSystemFont(ofSize: 30))")
      CustomTheme.setTheme(themeType: CustomTheme.ThemeType.light.rawValue)//update the theme
      Swift.print("Theme.theme.color.background:  \(Theme.theme.color.background)")
      Swift.print("Theme.theme.color.font.highlight:  \(Theme.theme.color.font.highlight)")
      Swift.print("Theme.theme.font.system:  \(Theme.theme.font.system)")
   }
}