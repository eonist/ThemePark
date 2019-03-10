import Foundation

public class Config{
   /**
    * the current theme (global variable)
    */
   static public var theme:Theme = getTheme(.light)
   static public var curThemeType:Themes = .light
   public enum Themes {case light, dark}
   /**
    * New
    */
   static public func getTheme(_ theme:Themes) -> Theme{
      let themeFileName:String = {
         switch theme {
         case .light:
            return "light.json"
         case .dark:
            return "dark.json"
         }
      }()
      guard let data:Data = FileParser.data(path: Bundle.main.resourcePath!+"/assets.bundle/"+themeFileName) else {fatalError("wrong file path")}
      guard let theme:Theme = try? decode(data: data) else {fatalError("can't be converted json to Theme")}
      return theme
   }
   static var transitionDuration = 0.5//Time it takes to transition from one theme to another
}
