import Foundation
/**
 * - Fixme: ⚠️️ make something called DefaultTheme that you can extend, copying customTheme is a drag for testing
 */
public class CustomTheme: Theme {
    public enum ThemeType: String { case light, dark }// Fixme: ⚠️️ delete this
    override public class func getTheme(theme: String) -> ThemeDataKind {
        Swift.print("getTheme")
        let themeFileName: String = {
            switch theme {
            case ThemeType.light.rawValue:
                return "light.json"
            case ThemeType.dark.rawValue:
                return "dark.json"
            default: fatalError("theme not supported")
            }
        }()
        // ⭐ Entry point ⭐
        do {
            guard let data: Data = FileParser.data(path: Bundle.main.resourcePath!+"/assets.bundle/" + themeFileName) else { fatalError("wrong file path") }
            let theme: ThemeData = try decode(data: data)
            return theme
        }
        catch {
            Swift.print("error:  \(error)")
            fatalError("can't be converted json to Theme")
        }
    }
}
