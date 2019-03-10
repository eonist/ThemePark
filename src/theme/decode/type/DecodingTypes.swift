import UIKit

/**
 * The transformer that handles parsing the string value to UIColor
 * TODO: ⚠️️ Add support for 0x00FF00FF (Aka hex with alpha value)
 * EXAMPLE: "color":"white"
 */
class ColorTransformer: DecodingContainerTransformer {
//   enum Error: Swift.Error { case cannotCreateColor(hex: String) }
   func decode(input: String) throws -> UIColor {
      return try ColorUtil.color(input)
   }
}
/**
 * The transformer that handles parsing the dictionary (Aka fontName and fontSize) value to UIColor
 * EXAMPLE: "font":{"name":".SFUIText","size":"16"}
 */
class UIFontTransformer: DecodingContainerTransformer {
   enum Error: Swift.Error {  case cannotCreateFont(name: [String:String]) }
   func decode(input:[String:String]) throws -> UIFont {
      guard let name = input["name"], let fontSize = input["size"], let fontSizeAsDouble = Double(fontSize), let font = UIFont.init(name: name, size: CGFloat(fontSizeAsDouble)) else {
         throw Error.cannotCreateFont(name: input)
      }
      return font
   }
}
