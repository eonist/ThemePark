#if os(iOS)
import UIKit
/**
 * Fixme: ⚠️️ Store these theme extensions centrally?
 */
extension UIViewController: Themeable {
   @objc public func apply() {
      self.view.backgroundColor = Theme.theme.color.background
   }
}
#endif
