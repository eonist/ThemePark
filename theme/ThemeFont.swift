import UIKit
/**
 * UIFont
 */
public struct ThemeFont:Decodable,ThemeFontKind{
   enum CodingKeys: String, CodingKey { case system,systemBold }/*CodingKeys are required when you want to customize your json parsing*/
   public let system:UIFont
   public let systemBold:UIFont
   public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: CodingKeys.self)
      system = try container.decode(key: .system, transformer: UIFontTransformer())
      systemBold = try container.decode(key: .systemBold, transformer: UIFontTransformer())
   }
}
