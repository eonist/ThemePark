import Foundation
#if os(iOS)
import ThemePark
#elseif os(macOS)
import ThemePark_macOS
#endif
/**
 * UIFont
 */
public struct ThemeFont: Decodable, ThemeFontKind {
    /**
     * CodingKeys are required when you want to customize your json parsing
     */
    enum CodingKeys: String, CodingKey { case system, systemBold }
    public let system: Font
    public let systemBold: Font
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        system = try container.decode(key: .system, transformer: UIFontTransformer())
        systemBold = try container.decode(key: .systemBold, transformer: UIFontTransformer())
    }
}
