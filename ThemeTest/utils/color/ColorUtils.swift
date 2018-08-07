
import UIKit

class ColorUtils{
    /**
     * EXAMPLE: Swift.print("red:  \(ColorUtils.color("red"))")
     * EXAMPLE: Swift.print("blue:  \(ColorUtils.color("0x0000FF"))")
     */
    static func color(_ colorStr:String) -> UIColor{
        let color:UInt = {
            if colorStr.subStr(0, 2) == "0x" {//do additional checking see regex pattern, but good enough for now
                return UInt(Float(colorStr)!)//CAUTION: ⚠️️ if you do "0xFF0000FF".uint it will give the wrong value, use UInt(Double("")!) instead for cases like that
            }else {
                guard let uint:UInt = ColorTypes.color(colorStr) else {fatalError("incorrect colortype")}
                return uint
            }
        }()
        return ColorUtils.color(color)
    }
    /**
     * Returns NSColor for hex int
     * NOTE: Convenience method
     * EXAMPLE: nsColor(UInt(0x39D149))
     */
    private static func color(_ hexColor:UInt, alpha:CGFloat = 1.0)->UIColor{
        let rgb:UInt = hexColor
        let r:UInt = rgb >> 16
        let g:UInt = (rgb ^ (r << 16)) >> 8
        let b:UInt = (rgb ^ (r << 16)) ^ (g << 8)
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(alpha))
    }
}



