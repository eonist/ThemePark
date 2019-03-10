import Foundation

public class Theme{
   /**
    * the current theme (global variable)
    */
   static public var theme:ThemeData = getTheme(.light)
   static public var curThemeType:Themes = .light
   public enum Themes {case light, dark}
   /**
    * New
    */
   static public func getTheme(_ theme:Themes) -> ThemeData{
      let themeFileName:String = {
         switch theme {
         case .light:
            return "light.json"
         case .dark:
            return "dark.json"
         }
      }()
      /*⭐ Entry point ⭐*/
      do {
         guard let data:Data = FileParser.data(path: Bundle.main.resourcePath!+"/assets.bundle/"+themeFileName) else {fatalError("wrong file path")}
         let theme:ThemeData = try decode(data: data)
//         Swift.print("theme.color.foreground:  \(theme.color.foreground)")
//         Swift.print("theme.font.system:  \(theme.font.system)")
//         Swift.print("theme.color.font.disabled:  \(theme.color.font.disabled)")
         return theme
      }
      catch {
         Swift.print("error:  \(error)")
         fatalError("can't be converted json to Theme")
      }
   }
   static var transitionDuration = 0.5//Time it takes to transition from one theme to another
}
