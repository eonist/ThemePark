import UIKit

/*Tab Bar:*/
extension UITabBar:Themeable{
   func apply(){
      self.barTintColor = Config.theme.color.background
      self.tintColor = Config.theme.color.tint
      //This line is a "Hot fix" see: https://forums.developer.apple.com/thread/60258
      self.layoutIfNeeded()
   }
}
