#if os(iOS)
import UIKit

extension UIStepper: Themeable {
   public func apply() {
      self.tintColor = Theme.theme.color.tint
   }
}
#endif
