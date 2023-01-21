import Flutter
import UIKit
import workmanager

public class SwiftAutoCachePlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "auto_cache", binaryMessenger: registrar.messenger())
        let instance = SwiftAutoCachePlugin()

        WorkmanagerPlugin.registerTask(withIdentifier: "dev.auto_cache.backgroundMemoryStorage.allObjectsTask")
        WorkmanagerPlugin.registerTask(withIdentifier: "dev.auto_cache.backgroundMemoryStorage.capsuleTask")
        WorkmanagerPlugin.registerTask(withIdentifier: "dev.auto_cache.backgroundMemoryStorage.entryTask")

        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        result("iOS " + UIDevice.current.systemVersion)
    }
}
