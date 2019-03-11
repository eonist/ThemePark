#if os(iOS)
import UIKit
/**
 * TODO: ⚠️️ Store these theme extensions centrally?
 */
extension UIViewController:Themeable{
   @objc public func apply(){
      self.view.backgroundColor = Theme.theme.color.background
   }
}
#endif
