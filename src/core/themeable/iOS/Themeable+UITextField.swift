import UIKit

extension UITextField:Themeable{
   func apply() {
      textColor = Theme.theme.color.font.highlight
      backgroundColor = Theme.theme.color.background
      borderStyle = .roundedRect
      font = Theme.theme.font.system
   }
}
