import UIKit
import ThemePark

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    static var curViewController:UITableViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {// Override point for customization after application launch.
//        Swift.print("UIFont.systemFont(ofSize: 18).fontName:  \(UIFont.boldSystemFont(ofSize: 18))")
        Swift.print(Bundle.main.resourcePath!+"/assets.bundle/dark.json")
        FileWatcher.init(Bundle.main.resourcePath!+"/assets.bundle/dark.json") {
            Swift.print("the file was modified")
            if let controller = AppDelegate.curViewController {
                Theme.theme = Theme.getTheme(Theme.curThemeType)//update the theme
                ThemeUtil.apply(controller)
            }
        }.start()
        return true
    }
}



//        _ = {
//            Swift.print(Bundle.main.resourcePath!+"/assets.bundle/theme.json")
//            func content(_ path:String)->String?{
//                do {
//                    let content = try String(contentsOfFile:path, encoding:String.Encoding.utf8) as String//encoding: NSUTF8StringEncoding
//                    return content
//                } catch {
//                    return nil
//                }
//            }
//            guard let themeStr:String = content(Bundle.main.resourcePath!+"/assets.bundle/theme.json") else { fatalError("err") }
//            Swift.print("themeStr:  \(themeStr)")
//            let json:Data = themeStr.data(using: .utf8)!
//
//            let theme:Theme? = try? decode(data: json)
//            Swift.print("theme?.color.background:  \(theme?.color.foreground)")
//            Swift.print("theme.font.system.fontName:  \(theme?.font.system.fontName)")
//            Swift.print("theme?.color.font.highlight:  \(theme?.color.font.highlight)")
//        }
        
