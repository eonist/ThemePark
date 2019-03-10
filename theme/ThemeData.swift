import Foundation
/**
 * ThemeData
 */
public struct ThemeData:Decodable,ThemeDataKind{
   enum  CodingKeys: String, CodingKey { case color,font }/*CodingKeys are required when you want to customize your json parsing*/
   public var font: ThemeFontKind
   public var color: ThemeColorKind
   //rename to ThemeData
//   public let color:ThemeColor//rename to colors
  
   //      color = try container.decode(key: .color, transformer: UIFontTransformer())
   //      font = try container.decode(key: .font, transformer: UIFontTransformer())
   /**
    * - Note: When you use Protocols as variable kind, the auto init doesnt work, so we have to decode it manually
    * - Note: Using "Variable kinds" makes Theme extensiable
    */
   public init(from decoder: Decoder) throws {
      Swift.print("init")
      let container = try decoder.container(keyedBy: CodingKeys.self)
      font = try container.decode(ThemeFont.self, forKey: .font)
      color  = try container.decode(ThemeColor.self, forKey: .color)
   }
}
