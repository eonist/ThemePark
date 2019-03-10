import UIKit

extension UISegmentedControl:Themeable{
   func apply() {
      self.tintColor = Theme.theme.color.tint
   }
}
