import UIKit
/**
 * UIColor
 */
struct ThemeColor:Decodable{
   enum CodingKeys: String, CodingKey { case foreground,middleground,background,tint,font }/*CodingKeys are required when you want to customize your json parsing*/
   var foreground:UIColor
   var middleground:UIColor
   var background:UIColor
   var tint:UIColor
   let font:ThemeFontColor
   init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: CodingKeys.self)
      foreground = try container.decode(key: .foreground, transformer: ColorTransformer())
      middleground = try container.decode(key: .middleground, transformer: ColorTransformer())
      background = try container.decode(key: .background, transformer: ColorTransformer())
      tint = try container.decode(key: .tint, transformer: ColorTransformer())
      font = try container.decode(ThemeFontColor.self, forKey: .font)
   }
}

