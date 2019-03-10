#if os(iOS)
import UIKit

extension UIButton:Themeable{
   /**
    * NOTE: there is also: backgroundColor
    */
   func apply(){
      setTitleColor(Theme.theme.color.font.highlight, for: .normal)
   }
}
#endif
