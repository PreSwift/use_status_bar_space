#import "UseStatusBarSpacePlugin.h"
#if __has_include(<use_status_bar_space/use_status_bar_space-Swift.h>)
#import <use_status_bar_space/use_status_bar_space-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "use_status_bar_space-Swift.h"
#endif

@implementation UseStatusBarSpacePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUseStatusBarSpacePlugin registerWithRegistrar:registrar];
}
@end
