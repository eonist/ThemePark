import UIKit

public protocol ThemeColorKind {
   var foreground:UIColor {get}
   var middleground:UIColor {get}
   var background:UIColor {get}
   var tint:UIColor {get}
   var font:ThemeFontColorKind {get}
}
