import UIKit
/**
 * - Note: the variables are decoded to underscore naming and read from app w/o underscore
 */
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
