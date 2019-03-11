import Foundation
/**
 * Utility methods (Apply theme to View and ViewController)
 */
public class ThemeUtil{// rename to Themer?  ThemeApplier? 
   /**
    * Applies a ThemeType to a UIView hierarchy (only affects UIViews that extends Themeable)
    */
   public static func apply(_ view:View){
      let themeables:[Themeable] = view.descendants() + (view is Themeable ? [view as! Themeable]: [])//add it view to the array if it is also themeable
      themeables.forEach{ $0.apply() }
   }
   /**
    * For Controllers that are not a View it self
    */
   public static func apply(_ viewController:ViewController){
      viewController.apply()
      apply(viewController.view)
   }
}
