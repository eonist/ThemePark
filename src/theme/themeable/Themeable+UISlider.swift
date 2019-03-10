import UIKit

extension UISlider:Themeable{
   func apply() {
      self.tintColor = Config.theme.color.tint
   }
}

