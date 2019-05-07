import Foundation
#if os(iOS)
import ThemePark
#elseif os(macOS)
import ThemePark_macOS
#endif

public struct ThemeFontColor: Decodable, ThemeFontColorKind {
   enum CodingKeys: String, CodingKey { case highlight, disabled }/*CodingKeys are required when you want to customize your json parsing*/
   public let highlight: Color
   public let disabled: Color
   public init(from decoder: Decoder) throws {
//      Swift.print("ThemeFontColor.init")
      let container = try decoder.container(keyedBy: CodingKeys.self)
      highlight = try container.decode(key: .highlight, transformer: ColorTransformer())
      disabled = try container.decode(key: .disabled, transformer: ColorTransformer())
   }
}
