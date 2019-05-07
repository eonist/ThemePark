#if os(iOS)
import UIKit
/**
 * Animation
 */
extension ThemeUtil {
   /**
    * Collects all Themeable views, And initiates "from, to" animation
    */
   public static func transition(_ view: UIView) {
      UIView.animate(withDuration: Theme.transitionDur, animations: {
         apply(view)
      }, completion: nil)
   }
   /**
    * For Controllers that are not a View it self
    */
   public static func transition(_ viewController: UIViewController) {
      UIView.animate(withDuration: Theme.transitionDur, animations: {
         apply(viewController)
      }, completion: nil)
   }
}
#endif
