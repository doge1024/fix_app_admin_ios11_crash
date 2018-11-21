#line 1 "/Users/lzh/Desktop/TestDemo/Test_appstore_admin/Test_appstore_admin/Test_appstore_admin.xm"


#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>



















#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class ASDPurchase; 
static void (*_logos_orig$_ungrouped$ASDPurchase$setBuyParameters$)(_LOGOS_SELF_TYPE_NORMAL ASDPurchase* _LOGOS_SELF_CONST, SEL, NSString *); static void _logos_method$_ungrouped$ASDPurchase$setBuyParameters$(_LOGOS_SELF_TYPE_NORMAL ASDPurchase* _LOGOS_SELF_CONST, SEL, NSString *); 

#line 26 "/Users/lzh/Desktop/TestDemo/Test_appstore_admin/Test_appstore_admin/Test_appstore_admin.xm"



static void _logos_method$_ungrouped$ASDPurchase$setBuyParameters$(_LOGOS_SELF_TYPE_NORMAL ASDPurchase* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * query) {
HBLogDebug(@"-[<ASDPurchase: %p> setBuyParameters:%@]", self, query);

NSMutableCharacterSet *lastSet = [[NSMutableCharacterSet alloc] init];
[lastSet formUnionWithCharacterSet:[NSCharacterSet characterSetWithCharactersInString:@" =\"#%/<>?@\\^`{}[]|&"]];
[lastSet formUnionWithCharacterSet:[NSCharacterSet letterCharacterSet]];
[lastSet formUnionWithCharacterSet:[NSCharacterSet alphanumericCharacterSet]];
NSString *str = [query stringByAddingPercentEncodingWithAllowedCharacters:lastSet];
HBLogDebug(@"-[<ASDPurchase: %p> setBuyParameters:%@]: %@", self, query, (str));
_logos_orig$_ungrouped$ASDPurchase$setBuyParameters$(self, _cmd, str);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ASDPurchase = objc_getClass("ASDPurchase"); MSHookMessageEx(_logos_class$_ungrouped$ASDPurchase, @selector(setBuyParameters:), (IMP)&_logos_method$_ungrouped$ASDPurchase$setBuyParameters$, (IMP*)&_logos_orig$_ungrouped$ASDPurchase$setBuyParameters$);} }
#line 42 "/Users/lzh/Desktop/TestDemo/Test_appstore_admin/Test_appstore_admin/Test_appstore_admin.xm"
