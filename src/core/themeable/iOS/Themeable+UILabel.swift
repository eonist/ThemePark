#if os(iOS)
import UIKit

extension UILabel:Themeable{
   public func apply(){
      textColor = Theme.theme.color.font.highlight
   }
}
#endif
