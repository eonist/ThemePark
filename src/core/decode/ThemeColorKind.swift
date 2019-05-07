import Foundation

public protocol ThemeColorKind {
   var foreground: Color { get }
   var middleground: Color { get }
   var background: Color { get }
   var tint: Color { get }
   var font: ThemeFontColorKind { get }
}
