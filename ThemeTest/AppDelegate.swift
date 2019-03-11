import UIKit
import ThemePark

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
//      Swift.print("\(Font.systemFont(ofSize: 20))")
//      Swift.print("\(Font.boldSystemFont(ofSize: 30))")
      /*Set the customTheme, before components ask Theme for styling*/
      
      CustomTheme.setTheme(themeType: CustomTheme.ThemeType.light.rawValue)//set init theme
      /*Watches for changes, super useful for testing styling by just changing the json doc*/
      FileWatcher.init(Bundle.main.resourcePath!+"/assets.bundle/dark.json") {
         Swift.print("the file was modified")
         if let controller = UIApplication.shared.topMostViewController() {
            CustomTheme.theme = CustomTheme.getTheme(theme: CustomTheme.currentType)//update the theme
            ThemeUtil.apply(controller)
         }
         }.start()
        return true
    }
}
