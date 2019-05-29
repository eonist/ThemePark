import Foundation

extension View {
    /**
     * Traverses the entire UIView hirearchy and collects views that are of speccific PARAM: type
     * TODO: ⚠️️ this can be written more elegantly with flatmap
     */
    func descendants<T>(type: T.Type? = nil) -> [T] {
        var subViewsOfType: [T] = []
        self.subviews.forEach {
            if let subView: T = ($0 as? T) {
                subViewsOfType.append(subView)
            }
            if !$0.subviews.isEmpty {
                subViewsOfType += $0.descendants(type: type)
            }
        }
        return subViewsOfType
    }
}

