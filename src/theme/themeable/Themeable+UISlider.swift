import UIKit

extension UISlider:Themeable{
   func apply() {
      self.tintColor = Theme.theme.color.tint
   }
}

