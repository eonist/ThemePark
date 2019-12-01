#if os(iOS)
import UIKit

extension UITextField: Themeable {
   public func apply() {
      textColor = Theme.theme.color.font.highlight
      backgroundColor = Theme.theme.color.background
      borderStyle = .roundedRect
      font = Theme.theme.font.system
   }
}
#endif
