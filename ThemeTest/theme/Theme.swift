import UIKit
/**
 * We use string as its Codable, and UIColor UIFont is not, to use the latter one could use UnWrap lib
 */
struct Theme:Decodable{
    let color:ThemeColor
    let font:ThemeFont
}
struct ThemeColor:Decodable{
    private let _foreground:String
    private let _middleground:String
    private let _background:String
    private let _tint:String
    let font:ThemeFontColor
    
}
extension ThemeColor{
    var foreground:UIColor {return ColorUtils.color(_foreground)}
    var middleground:UIColor {return ColorUtils.color(_middleground)}
    var background:UIColor {return ColorUtils.color(_background)}
    var tint:UIColor {return ColorUtils.color(_tint)}
}
struct ThemeFontColor:Decodable{
    private let _highlight:String
    private let _disabled:String
}
extension ThemeFontColor{
    var highlight:UIColor {return ColorUtils.color(_highlight)}
    var disabled:UIColor {return ColorUtils.color(_disabled)}
}
struct ThemeFont:Decodable{
    private let _system:DecodableFont
    private let _systemBold:DecodableFont
}
extension ThemeFont{
    var system:UIFont {return UIFont.init(name: _system.name, size: _system.size)!}
    var systemBold:UIFont {return UIFont.init(name: _systemBold.name, size: _systemBold.size)!}
}
struct DecodableFont:Decodable{
    let name:String
    let size:CGFloat
}


