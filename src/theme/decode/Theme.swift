import UIKit
/**
 * We use string as it's Codable, and UIColor UIFont is not, to use the latter one could use UnWrap lib
 */
public struct Theme:Decodable{
    let color:ThemeColor//rename to colors
    let font:ThemeFont//fonts
}
