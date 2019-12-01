#if os(iOS)

import UIKit

extension UISegmentedControl: Themeable {
   public func apply() {
      self.tintColor = Theme.theme.color.tint
   }
}
#endif
