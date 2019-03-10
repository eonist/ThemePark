import UIKit
import ThemePark

class SettingsController:UITableViewController {
    @IBAction func onSwitchChange(_ sender: UISwitch) {
        Theme.curThemeType = sender.isOn ? .dark : .light
        Theme.theme = Theme.getTheme(Theme.curThemeType)
        ThemeUtil.transition(self)
    }
}
/**
 * Core
 */
extension SettingsController{
   override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      AppDelegate.curViewController = self
      ThemeUtil.apply(self)
      //Swift.print("topMostViewController():  \(UIApplication.shared.topMostViewController())")
   }
}
