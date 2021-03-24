import Flutter
import UIKit

public class SwiftUseStatusBarSpacePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "use_status_bar_space", binaryMessenger: registrar.messenger())
    let instance = SwiftUseStatusBarSpacePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result(nil)
  }
}
