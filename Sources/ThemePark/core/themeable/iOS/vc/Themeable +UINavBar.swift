#if os(iOS)

import UIKit

/*navBar*/
extension UINavigationBar: Themeable {
   public func apply() {
      self.barTintColor = Theme.theme.color.background
      //Fixme: ⚠️️ this shuldnt be hardcode like this , try storing the actual style somehow?
      self.barStyle = (Theme.currentType == "dark" ? .black : .default)
      let navBarTitleColor: UIColor = Theme.theme.color.font.highlight
      self.titleTextAttributes = [NSAttributedString.Key.foregroundColor: navBarTitleColor]
      self.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: navBarTitleColor]
      //This line is a "Hot fix" see: https://forums.developer.apple.com/thread/60258
      self.layoutIfNeeded()
   }
}
#endif
