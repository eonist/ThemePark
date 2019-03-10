import UIKit

extension UIStepper:Themeable{
   func apply() {
      self.tintColor = Theme.theme.color.tint
   }
}
