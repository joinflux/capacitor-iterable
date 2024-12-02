import Foundation
import Capacitor
import Foundation

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@available(iOS 14.0, *)
@objc(CapacitorIterablePlugin)
public class CapacitorIterablePlugin: CAPPlugin {
    private let implementation = CapacitorIterable()
    
    @objc public func initialize(_ call: CAPPluginCall) {
        guard let value = call.getString("apiKey") else { return call.reject("missing required field: apiKey") }
        implementation.initialize(value)
    }

    @objc public func setEmail(_ call: CAPPluginCall) {
        guard let value = call.getString("email") else { return call.reject("missing required field: email") }
        implementation.setEmail(email: value)
    }

    @objc public func register(_ call: CAPPluginCall) {
        guard let value = call.getString("token") else { return call.reject("missing required field: token") }
        NSLog("--- Register called \(value)")
        implementation.register(token: hexStringToData(value)!)
    }

    
    @objc public func setUserId(_ call: CAPPluginCall) {
        guard let value = call.getString("userId") else { return call.reject("missing required field: userId") }
        implementation.setUserId(userId: value)
    }
}


func hexStringToData(_ hex: String) -> Data? {
    var data = Data()
    
    // Ensure the hex string has an even number of characters
    guard hex.count % 2 == 0 else { return nil }
    
    // Iterate through the string, converting each pair of hex characters to a byte
    for i in stride(from: 0, to: hex.count, by: 2) {
        let start = hex.index(hex.startIndex, offsetBy: i)
        let end = hex.index(start, offsetBy: 2)
        let hexByte = String(hex[start..<end])
        
        if let byte = UInt8(hexByte, radix: 16) {
            data.append(byte)
        } else {
            return nil  // If any invalid hex string is encountered
        }
    }
    
    return data
}
