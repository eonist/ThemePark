import UIKit
import ThemePark

class SettingsController:UITableViewController {
    @IBAction func onSwitchChange(_ sender: UISwitch) {
        Config.curThemeType = sender.isOn ? .dark : .light
        Config.theme = Config.getTheme(Config.curThemeType)
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
