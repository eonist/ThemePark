import UIKit

struct ThemeFontColor:Decodable{
   private let _highlight:String
   private let _disabled:String
}
extension ThemeFontColor{
   var highlight:UIColor {return ColorUtils.color(_highlight)}
   var disabled:UIColor {return ColorUtils.color(_disabled)}
}
