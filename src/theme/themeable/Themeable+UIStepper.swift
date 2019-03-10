import UIKit

extension UIStepper:Themeable{
   func apply() {
      self.tintColor = Config.theme.color.tint
   }
}
