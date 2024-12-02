#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(CapacitorIterablePlugin, "CapacitorIterable",
           CAP_PLUGIN_METHOD(setEmail, CAPPluginReturnNone);
           CAP_PLUGIN_METHOD(setUserId, CAPPluginReturnNone);
           CAP_PLUGIN_METHOD(initialize, CAPPluginReturnNone);
           CAP_PLUGIN_METHOD(register, CAPPluginReturnNone);

//           CAP_PLUGIN_METHOD(unregister, CAPPluginReturnPromise);
//           CAP_PLUGIN_METHOD(checkPermissions, CAPPluginReturnPromise);
//           CAP_PLUGIN_METHOD(requestPermissions, CAPPluginReturnPromise);
)
