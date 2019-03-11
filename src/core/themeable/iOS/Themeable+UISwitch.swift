#if os(iOS)

import UIKit
extension UISwitch:Themeable{
   /**
    * Tint color doesn't animate very good on the switch if its used to switch theme, self.onTintColor = theme.color.tint
    */
   public func apply() {
      self.layer.cornerRadius = 16.0
      self.backgroundColor = Theme.theme.color.background
   }
}
#endif
