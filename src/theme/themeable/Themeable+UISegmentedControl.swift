import UIKit

extension UISegmentedControl:Themeable{
   func apply() {
      self.tintColor = Config.theme.color.tint
   }
}
