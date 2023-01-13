#import "AutoCachePlugin.h"
#if __has_include(<auto_cache/auto_cache-Swift.h>)
#import <auto_cache/auto_cache-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "auto_cache-Swift.h"
#endif

@implementation AutoCachePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAutoCachePlugin registerWithRegistrar:registrar];
}
@end
