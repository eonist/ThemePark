import UIKit
import ThemePark

class SettingsController:UITableViewController {
    @IBAction func onSwitchChange(_ sender: UISwitch) {
      CustomTheme.currentType = sender.isOn ? CustomTheme.ThemeType.dark.rawValue : CustomTheme.ThemeType.light.rawValue
      CustomTheme.theme = CustomTheme.getTheme(theme: CustomTheme.currentType)
      ThemeUtil.transition(self)
    }
}
/**
 * Core
 */
extension SettingsController{
   override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
//      AppDelegate.curViewController = self
      ThemeUtil.apply(self)
      //Swift.print("topMostViewController():  \(UIApplication.shared.topMostViewController())")
   }
}
