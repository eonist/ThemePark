import Foundation

public class ColorUtil {
   enum Error: Swift.Error { case inCorrectColorType(hex: String) }
   /**
    * # Examples:
    * Swift.print("red:  \(ColorUtils.color("red"))")
    * Swift.print("blue:  \(ColorUtils.color("0x0000FF"))") // NSColor / UIColor
    */
   public static func color(_ colorStr: String) throws -> Color {
      let color: UInt = try {
         if colorStr.hasPrefix("0x") {//do additional checking see regex pattern, but good enough for now
            return UInt(Float(colorStr)!)//CAUTION: ⚠️️ if you do "0xFF0000FF".uint it will give the wrong value, use UInt(Double("")!) instead for cases like that
         }else {
            guard let uint: UInt = ColorTypes.color(colorStr) else { throw Error.inCorrectColorType(hex: colorStr) }
            return uint
         }
         }()
      return ColorUtil.color(color)
   }
   /**
    * Returns NSColor for hex int
    * - Note: Convenience method
    * - Example: nsColor(UInt(0x39D149))
    */
   private static func color(_ hexColor: UInt, alpha: CGFloat = 1.0) -> Color {
      let rgb: UInt = hexColor
      let r: UInt = rgb >> 16
      let g: UInt = (rgb ^ (r << 16)) >> 8
      let b: UInt = (rgb ^ (r << 16)) ^ (g << 8)
      return Color(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(alpha))
   }
}
