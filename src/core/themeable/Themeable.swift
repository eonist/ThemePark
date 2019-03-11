import Foundation

public protocol Themeable{
   /**
    * When classes extend Themeable they must implement this method with styling code
    * - Note: to deviate from default theme, create a SubClass and override with protocol method overriding
    */
   func apply()
}
