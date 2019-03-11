#if os(iOS)

import UIKit

/*Tab Bar:*/
extension UITabBar:Themeable{
   public func apply(){
      self.barTintColor = Theme.theme.color.background
      self.tintColor = Theme.theme.color.tint
      //This line is a "Hot fix" see: https://forums.developer.apple.com/thread/60258
      self.layoutIfNeeded()
   }
}
#endif
