import UIKit
/**
 * VC
 */
extension UIViewController {
   func topMostViewController() -> UIViewController {
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
/**
 * App
 */
extension UIApplication {
   public func topMostViewController() -> UIViewController? {
      return self.keyWindow?.rootViewController?.topMostViewController()
   }
}

//        if let navigation = self.presentedViewController as? UINavigationController {
//            if let visibleController = navigation.visibleViewController {
//                return visibleController.topMostViewController()
//            }
//        }
