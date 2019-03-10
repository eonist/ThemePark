import Foundation
/**
 * Light theme (If you want to use struct instead of json, not part of core, add to your own app)
 */
//struct LightTheme:ThemeProtocol{
//    let color:ColorProtocol = Color()
//    struct Color:ColorProtocol{
//        let foreground:UIColor = .white
//        let middleground:UIColor  =  .gray
//        let background:UIColor = .white
//        let tint:UIColor = .blue
//        let font:ColorFontProtocol = Font()
//        struct Font:ColorFontProtocol{
//            let highlight:UIColor = .black
//            let disabled:UIColor = .black
//        }
//    }
//    let font:FontProtocol = DefaultFont()
//}
///**
// * Dark theme
// */
//struct DarkTheme:ThemeProtocol{
//    let color:ColorProtocol = Color()
//    struct Color:ColorProtocol{
//        let foreground:UIColor = .gray
//        let middleground:UIColor  =  .gray
//        let background:UIColor = .black
//        let tint:UIColor = .yellow
//        let font:ColorFontProtocol = Font()
//        struct Font:ColorFontProtocol{
//            let highlight:UIColor = .white
//            let disabled:UIColor = .black
//        }
//    }
//    let font:FontProtocol = DefaultFont()
//}
///**
// * Common trait for Dark and light theme
// */
//struct DefaultFont:FontProtocol{
//    let system:UIFont = .systemFont(ofSize:18)
//    let systemBold:UIFont = .boldSystemFont(ofSize:18)
//}
///**
// * Common theme protocols, required in order to be able to switch between themes
// */
//protocol ThemeProtocol{
//    var color:ColorProtocol {get}
//    var font:FontProtocol {get}
//}
//protocol FontProtocol{
//    var system:UIFont {get}
//    var systemBold:UIFont {get}
//}
//protocol ColorProtocol{
//    var foreground:UIColor {get}
//    var middleground:UIColor {get}
//    var background:UIColor {get}
//    var tint:UIColor {get}
//    var font:ColorFontProtocol {get}
//}
//protocol ColorFontProtocol{
//    var highlight:UIColor {get}
//    var disabled:UIColor {get}
//}

