#if os(iOS)
import UIKit
/**
 * TODO: ⚠️️ Store these theme extensions centrally?
 */
extension UITableViewController:Themeable{
   public func apply(){
      self.tableView.backgroundColor = Theme.theme.color.background
      tabBarController?.tabBar.apply()
      navigationController?.navigationBar.apply()
   }
}
#endif
