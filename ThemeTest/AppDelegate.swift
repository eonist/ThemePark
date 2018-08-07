//
//  AppDelegate.swift
//  ThemeTest
//
//  Created by eon on 17/03/2018.
//  Copyright © 2018 futurelab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    static var curViewController:UITableViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {// Override point for customization after application launch.
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
        
//        Swift.print("UIFont.systemFont(ofSize: 18).fontName:  \(UIFont.boldSystemFont(ofSize: 18))")
        Swift.print(Bundle.main.resourcePath!+"/assets.bundle/dark.json")
        
        FileWatcher.init(Bundle.main.resourcePath!+"/assets.bundle/dark.json") {
            Swift.print("the file was modified")
            if let controller = AppDelegate.curViewController {
                theme = getTheme(curThemeType)//update the theme
                ThemeUtils.apply(controller)
            }
        }.start()
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}



extension UIViewController {
    func topMostViewController() -> UIViewController {
//        if let navigation = self.presentedViewController as? UINavigationController {
//            if let visibleController = navigation.visibleViewController {
//                return visibleController.topMostViewController()
//            }
//        }
        if let tab = self.presentedViewController as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController()
            }
            return tab.topMostViewController()
        }
        if self.presentedViewController == nil {
            return self
        }
        return self.presentedViewController!.topMostViewController()
    }
}

extension UIApplication {
    func topMostViewController() -> UIViewController? {
        return self.keyWindow?.rootViewController?.topMostViewController()
    }
}
