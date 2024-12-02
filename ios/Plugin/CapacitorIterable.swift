import Foundation

@objc public class CapacitorIterable: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
