import UIKit

extension UITextField:Themeable{
   func apply() {
      textColor = Config.theme.color.font.highlight
      backgroundColor = Config.theme.color.background
      borderStyle = .roundedRect
      font = Config.theme.font.system
   }
}
