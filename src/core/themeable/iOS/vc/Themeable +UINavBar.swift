import UIKit

/*navBar*/
extension UINavigationBar:Themeable{
   func apply(){
      self.barTintColor = Theme.theme.color.background
      //TODO: ⚠️️ this shuldnt be hardcode like this 
      self.barStyle = (CustomTheme.currentType == CustomTheme.ThemeType.dark.rawValue ? .black : .default)
      let navBarTitleColor:UIColor = Theme.theme.color.font.highlight
      self.titleTextAttributes = [NSAttributedString.Key.foregroundColor: navBarTitleColor]
      self.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: navBarTitleColor]
      //This line is a "Hot fix" see: https://forums.developer.apple.com/thread/60258
      self.layoutIfNeeded()
   }
}
