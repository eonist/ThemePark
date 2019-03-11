#if os(iOS)
import UIKit
/**
 * TODO: ⚠️️ Store these theme extensions centrally?
 */
extension NSViewController:Themeable{
   public func apply(){
      self.backgroundColor = Theme.theme.color.background
   }
}
#endif
