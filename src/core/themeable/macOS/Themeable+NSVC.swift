#if os(macOS)
import Cocoa
/**
 * Fixme: ⚠️️ Store these theme extensions centrally?
 */
extension NSViewController: Themeable {
   public func apply() {
      self.view.layer?.backgroundColor = Theme.theme.color.background.cgColor
   }
}
#endif
