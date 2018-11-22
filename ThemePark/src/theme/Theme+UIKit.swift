import UIKit
/**
 * TODO: ⚠️️ Store these theme extensions centrally?
 */
extension UITableViewController:Themeable{
    func apply(){
        self.tableView.backgroundColor = theme.color.background
        
        _ = {//navBar
            navigationController?.navigationBar.barTintColor = theme.color.background
            navigationController?.navigationBar.barStyle = (curThemeType == .dark ? .black : .default)
            let navBarTitleColor:UIColor = theme.color.font.highlight
         navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: navBarTitleColor]
         navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: navBarTitleColor]
            //This line is a "Hot fix" see: https://forums.developer.apple.com/thread/60258
            navigationController?.navigationBar.layoutIfNeeded()
        }()
        
        _ = {//Tab Bar:
            tabBarController?.tabBar.barTintColor = theme.color.background
            tabBarController?.tabBar.tintColor = theme.color.tint
            //This line is a "Hot fix" see: https://forums.developer.apple.com/thread/60258
            tabBarController?.tabBar.layoutIfNeeded()
        }()
    }
}
extension UIButton:Themeable{
    /**
     * NOTE: there is also: backgroundColor
     */
    func apply(){
        setTitleColor(theme.color.font.highlight, for: .normal)
    }
}
extension UILabel:Themeable{
    func apply(){
        textColor = theme.color.font.highlight
    }
}
extension UITableViewCell:Themeable{
    func apply() {
        backgroundColor = theme.color.background
        textLabel?.textColor = theme.color.font.highlight
    }
}
extension UISwitch:Themeable{
    /**
     * Tint color doesn't animate very good on the switch if its used to switch theme, self.onTintColor = theme.color.tint
     */
    func apply() {
        self.layer.cornerRadius = 16.0
        self.backgroundColor = theme.color.background
    }
}
extension UISegmentedControl:Themeable{
    func apply() {
        self.tintColor = theme.color.tint
    }
}
extension UISlider:Themeable{
    func apply() {
        self.tintColor = theme.color.tint
    }
}
extension UIStepper:Themeable{
    func apply() {
        self.tintColor = theme.color.tint
    }
}
extension UITextField:Themeable{
    func apply() {
        textColor = theme.color.font.highlight
        backgroundColor = theme.color.background
        borderStyle = .roundedRect
        font = theme.font.system
    }
}
