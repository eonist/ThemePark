import UIKit

extension UILabel:Themeable{
   func apply(){
      textColor = Config.theme.color.font.highlight
   }
}
