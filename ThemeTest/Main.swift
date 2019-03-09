import UIKit
import ThemePark

class Main:UITableViewController{
    private var list:[String] = ["red","blue","green"]
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ThemeUtils.apply(self)
    }
}
/**
 * Core
 */
extension Main{
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
      cell.textLabel?.text = list[indexPath.row]
      return cell
   }
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return list.count
   }
}
