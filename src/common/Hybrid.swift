#if os(iOS)
import UIKit
public typealias View = UIView
public typealias ViewController = UIViewController
public typealias Color = UIColor
public typealias Font = UIFont
#elseif os(macOS)
import Cocoa
public typealias View = NSView
public typealias ViewController = NSViewController
public typealias Color = NSColor
public typealias Font = NSFont
#endif
