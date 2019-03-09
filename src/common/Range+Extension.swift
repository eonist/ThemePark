import Foundation

/**
 * Range
 */
extension Range {
    var start:Bound {return self.lowerBound}//(0..<4).lowerBound -> 0
    var end:Bound {return self.upperBound}//(0..<4).upperBound -> 4
}
