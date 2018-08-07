import UIKit

var theme:Theme = getTheme(.light)//the current theme (global variable)
var curThemeType:Themes = .light
enum Themes {case light, dark}
/**
 * New
 */
func getTheme(_ theme:Themes) -> Theme{
    let themeFileName:String = {
        switch theme {
        case .light:
            return "light.json"
        case .dark:
            return "dark.json"
        }
    }()
    guard let data:Data = FileParser.data(Bundle.main.resourcePath!+"/assets.bundle/"+themeFileName) else {fatalError("wrong file path")}
    guard let theme:Theme = try? decode(data: data) else {fatalError("can't be converted json to Theme")}
    return theme
}
var transitionDuration = 0.5//Time it takes to transition from one theme to another

protocol Themeable{
    /**
     * When classes extend Themeable they must implement this method with styling code
     * NOTE: to deviate from default theme, create a SubClass and override with protocol method overriding
     */
    func apply()
}
/**
 * Utility methods
 */
class ThemeUtils{
    /**
     * Applies a ThemeType to a UIView hierarchy (only affects UIViews that extends Themeable)
     */
    static func apply(_ view:UIView){
        let themeables:[Themeable] = Utils.descendants(view) + (view is Themeable ? [view as! Themeable]: [])//add it view to the array if it is also themeable
        themeables.forEach{
            $0.apply()
        }
    }
    /**
     * For Controllers that are not a View it self
     */
    static func apply(_ viewController:UIViewController){
        (viewController as? Themeable)?.apply()
        apply(viewController.view)
    }
    /**
     * Collects all Themeable views, And initiates "from, to" animation
     */
    static func transition(_ view:UIView){
        UIView.animate(withDuration: transitionDuration, animations: {
            apply(view)
        }, completion: nil)
    }
    /**
     * For Controllers that are not a View it self
     */
    static func transition(_ viewController:UIViewController){
        UIView.animate(withDuration: transitionDuration, animations: {
            apply(viewController)
        }, completion: nil)
    }
}
private class Utils{
    /**
     * Traverses the entire UIView hirearchy and collects views that are of speccific PARAM: type
     */
    static func descendants<T>(_ view:UIView, type:T.Type? = nil)->[T] {
        var subViewsOfType:[T] = []
        view.subviews.forEach{
            if let subView:T = ($0 as? T) {
                subViewsOfType.append(subView)
            }
            if !$0.subviews.isEmpty {
                subViewsOfType += descendants($0,type:type)
            }
        }
        return subViewsOfType
    }
}
