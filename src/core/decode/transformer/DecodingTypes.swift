import Foundation

/**
 * The transformer that handles parsing the string value to UIColor
 * TODO: ⚠️️ Add support for 0x00FF00FF (Aka hex with alpha value)
 * EXAMPLE: "color":"white"
 */
public struct ColorTransformer: DecodingContainerTransformer {
//   enum Error: Swift.Error { case cannotCreateColor(hex: String) }
   public func decode(input: String) throws -> Color {
      return try ColorUtil.color(input)
   }
   public init() {}//<- Strange that you have to have this, but SuperTypes won't compile if not
   
}
/**
 * The transformer that handles parsing the dictionary (Aka fontName and fontSize) value to UIColor
 * EXAMPLE: "font":{"name":".SFUIText","size":"16"}
 */
public struct UIFontTransformer: DecodingContainerTransformer {
   enum Error: Swift.Error {  case cannotCreateFont(name: [String:String]) }
   public func decode(input:[String:String]) throws -> Font {
      guard let name = input["name"], let fontSize = input["size"], let fontSizeAsDouble = Double(fontSize), let font = Font.init(name: name, size: CGFloat(fontSizeAsDouble)) else {
         throw Error.cannotCreateFont(name: input)
      }
      return font
   }
   public init() {}
}
