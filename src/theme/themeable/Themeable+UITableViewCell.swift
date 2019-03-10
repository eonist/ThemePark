import UIKit

extension UITableViewCell:Themeable{
   func apply() {
      backgroundColor = Config.theme.color.background
      textLabel?.textColor = Config.theme.color.font.highlight
   }
}

