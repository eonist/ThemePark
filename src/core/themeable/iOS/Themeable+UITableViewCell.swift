#if os(iOS)

import UIKit

extension UITableViewCell:Themeable{
   func apply() {
      backgroundColor = Theme.theme.color.background
      textLabel?.textColor = Theme.theme.color.font.highlight
   }
}

#endif
