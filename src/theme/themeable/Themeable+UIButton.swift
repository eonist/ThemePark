import UIKit


extension UIButton:Themeable{
   /**
    * NOTE: there is also: backgroundColor
    */
   func apply(){
      setTitleColor(Config.theme.color.font.highlight, for: .normal)
   }
}
