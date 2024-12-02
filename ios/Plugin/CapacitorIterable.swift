import os
import IterableSDK

@available(iOS 14.0, *)
@objc public class CapacitorIterable: NSObject {
    private var logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "CapacitorIterable")
    
    public func initialize(_ apiKey: String, config: IterableConfig = IterableConfig()) {
        config.autoPushRegistration = false
        IterableAPI.initialize(apiKey: apiKey, launchOptions: nil, config: config)
        logger.debug("--- Intialized Capacitor Iterable")
    }

    /**
     * `setEmail` sets the email to associate to the device.
     */
    public func setEmail(email: String){
        logger.debug("--- Setting email \(email, privacy: .public)")
        IterableAPI.email = email
    }
    
    /**
     * `register` registers the device for push notifications.
     */
    public func register(token: Data){
        logger.debug("--- Registering token: \(token.map { String(format: "%02x", $0) }.joined(), privacy: .public)")
        IterableAPI.register(token: token, onSuccess: { data in
            self.logger.debug("--- Successfuly registered: \(data?.debugDescription ?? "No data")")
        }, onFailure: { (_ reason: String?, _ data: Data?) in
            self.logger.error("--- Failed to register: \(reason ?? "No Reason", privacy: .public) || \(data?.debugDescription ?? "No data")")
        })
    }

    /**
     * `setUserId` sets the userId to associate to the device.
     */
    public func setUserId(userId: String){
        logger.debug("--- Setting userId")
        IterableAPI.userId = userId
        IterableAPI.track(event: "Setting UserID")
    }
}
