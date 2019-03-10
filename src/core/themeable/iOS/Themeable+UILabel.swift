#if os(iOS)
import UIKit

extension UILabel:Themeable{
   func apply(){
      textColor = Theme.theme.color.font.highlight
   }
}
#endif
