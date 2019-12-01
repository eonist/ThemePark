import Foundation
/**
 * These are the minimal values a theme must have
 * - Note: if you want to Structure it differently, then you must provide getters so that UIKit can get its colors and fonts etc
 */
public protocol ThemeDataKind {
   var color: ThemeColorKind { get set }
   var font: ThemeFontKind { get set }
}
