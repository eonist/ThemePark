import Foundation
/**
 * UIColor
 */
public struct ThemeColor: Decodable, ThemeColorKind {
    /**
     * CodingKeys are required when you want to customize your json parsing
     */
    enum CodingKeys: String, CodingKey { case foreground, middleground, background, tint, font }
    public let foreground: Color
    public let middleground: Color
    public let background: Color
    public let tint: Color
    public let font: ThemeFontColorKind
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        foreground = try container.decode(key: .foreground, transformer: ColorTransformer())
        middleground = try container.decode(key: .middleground, transformer: ColorTransformer())
        background = try container.decode(key: .background, transformer: ColorTransformer())
        tint = try container.decode(key: .tint, transformer: ColorTransformer())
        font = try container.decode(ThemeFontColor.self, forKey: .font)
    }
}
