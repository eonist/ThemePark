
import UIKit

/**
 * UIFont
 */
struct ThemeFont:Decodable{
   enum CodingKeys: String, CodingKey { case system,systemBold }/*CodingKeys are required when you want to customize your json parsing*/
   var system:UIFont
   var systemBold:UIFont
   init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: CodingKeys.self)
      system = try container.decode(key: .system, transformer: UIFontTransformer())
      systemBold = try container.decode(key: .systemBold, transformer: UIFontTransformer())
   }
}
