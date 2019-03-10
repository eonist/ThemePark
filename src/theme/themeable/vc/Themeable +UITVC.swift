import UIKit
/**
 * TODO: ⚠️️ Store these theme extensions centrally?
 */
extension UITableViewController:Themeable{
   func apply(){
      self.tableView.backgroundColor = Config.theme.color.background
      tabBarController?.tabBar.apply()
      navigationController?.navigationBar.apply()
   }
}
