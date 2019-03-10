import UIKit

/*navBar*/
extension UINavigationBar:Themeable{
   func apply(){
      self.barTintColor = Config.theme.color.background
      self.barStyle = (Config.curThemeType == .dark ? .black : .default)
      let navBarTitleColor:UIColor = Config.theme.color.font.highlight
      self.titleTextAttributes = [NSAttributedString.Key.foregroundColor: navBarTitleColor]
      self.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: navBarTitleColor]
      //This line is a "Hot fix" see: https://forums.developer.apple.com/thread/60258
      self.layoutIfNeeded()
   }
}
