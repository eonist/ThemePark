#if os(iOS)

import UIKit

extension UISlider: Themeable {
   public func apply() {
      self.tintColor = Theme.theme.color.tint
   }
}
#endif
