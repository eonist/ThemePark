import Foundation
/**
 * Make this more extensiable for overriding, use string instead of enum
 * - TODO: ⚠️️ needs refactoring, use didset etc. simplify, use singlton if needed 
 */
public class Theme:ThemeKind{
   private static var _theme:ThemeDataKind?
   /**
    * Override this in subClass
    */
   static public var theme:ThemeDataKind {
      get{
         if let _theme = _theme {
            return _theme
         }else{
            fatalError("No theme is assigned yet")
         }
      }set{
         _theme = newValue
      }
   }
   /*Holdes the current theme type, not really needed, but nice to have*/
   static private var _currentType:String?
   class public var currentType:String {
      get{
         if let _currentType = _currentType {
            return _currentType
         }else{
            fatalError("No curThemeType is assigned yet")
         }
      }set{
         _currentType = newValue
      }
   }// = .light// <-- light is default
   static var transitionDur = 0.5//Time it takes to transition from one theme to another
   /**
    * Override this for custom themes
    */
   open class func getTheme(theme:String) -> ThemeDataKind{//⚠️️ this must be case string
      fatalError("must be ovveridien by subclass")
   }
   /**
    * set theme
    */
   public static func setTheme(themeType:String){
      currentType = themeType
      theme = getTheme(theme: currentType)
   }
}
