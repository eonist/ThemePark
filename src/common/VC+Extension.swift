#if os(iOS)
import UIKit
#elseif os(macOS)
import Cocoa
#endif
/**
 * VC
 */
extension ViewController {
    #if os(iOS)
   func topMostViewController() -> ViewController {
     
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
    #endif
}
 #if os(iOS)
/**
 * App
 */
extension Application {
   public func topMostViewController() -> ViewController? {
      return self.keyWindow?.rootViewController?.topMostViewController()
   }
}
 #endif
 #if os(macOS)
/**
 * App
 */
extension Application {
   public func topMostViewController() -> ViewController? {
      return self.keyWindow?.contentViewController
   }
}
 #endif
//        if let navigation = self.presentedViewController as? UINavigationController {
//            if let visibleController = navigation.visibleViewController {
//                return visibleController.topMostViewController()
//            }
//        }
