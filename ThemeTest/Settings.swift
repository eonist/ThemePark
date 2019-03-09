import UIKit
import ThemePark

class SettingsController:UITableViewController {
    @IBAction func onSwitchChange(_ sender: UISwitch) {
        curThemeType = sender.isOn ? .dark : .light
        theme = getTheme(curThemeType)
        ThemeUtils.transition(self)
    }
}
/**
 * Core
 */
extension SettingsController{
   override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      AppDelegate.curViewController = self
      ThemeUtils.apply(self)
      //Swift.print("topMostViewController():  \(UIApplication.shared.topMostViewController())")
   }
}
