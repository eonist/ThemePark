import UIKit

struct ThemeFontColor:Decodable{
   enum CodingKeys: String, CodingKey { case highlight,disabled }/*CodingKeys are required when you want to customize your json parsing*/
   var highlight:UIColor
   var disabled:UIColor
   init(from decoder: Decoder) throws {
      Swift.print("ThemeFontColor.init")
      let container = try decoder.container(keyedBy: CodingKeys.self)
      highlight = try container.decode(key: .highlight, transformer: ColorTransformer())
      disabled = try container.decode(key: .disabled, transformer: ColorTransformer())
   }
}
