import UIKit
/**
 * - Note: the variables are decoded to underscore naming and read from app w/o underscore
 */
struct ThemeFont:Decodable{
   private let _system:DecodableFont
   private let _systemBold:DecodableFont
}
extension ThemeFont{
   var system:UIFont {return UIFont.init(name: _system.name, size: _system.size)!}
   var systemBold:UIFont {return UIFont.init(name: _systemBold.name, size: _systemBold.size)!}
}
