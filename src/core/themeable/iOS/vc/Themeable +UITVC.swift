#if os(iOS)
import UIKit
/**
 * Fixme: ⚠️️ Store these theme extensions centrally?
 */
extension UITableViewController {
   override public func apply() {
      self.tableView.backgroundColor = Theme.theme.color.background
      tabBarController?.tabBar.apply()
      navigationController?.navigationBar.apply()
   }
}
#endif
