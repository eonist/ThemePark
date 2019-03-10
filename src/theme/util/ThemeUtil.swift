import UIKit


/**
 * Utility methods
 */
public class ThemeUtil{
   /**
    * Applies a ThemeType to a UIView hierarchy (only affects UIViews that extends Themeable)
    */
   public static func apply(_ view:UIView){
      let themeables:[Themeable] = view.descendants() + (view is Themeable ? [view as! Themeable]: [])//add it view to the array if it is also themeable
      themeables.forEach{ $0.apply() }
   }
   /**
    * For Controllers that are not a View it self
    */
   public static func apply(_ viewController:UIViewController){
      (viewController as? Themeable)?.apply()
      apply(viewController.view)
   }
   /**
    * Collects all Themeable views, And initiates "from, to" animation
    */
   public static func transition(_ view:UIView){
      UIView.animate(withDuration: Theme.transitionDuration, animations: {
         apply(view)
      }, completion: nil)
   }
   /**
    * For Controllers that are not a View it self
    */
   public static func transition(_ viewController:UIViewController){
      UIView.animate(withDuration: Theme.transitionDuration, animations: {
         apply(viewController)
      }, completion: nil)
   }
}
