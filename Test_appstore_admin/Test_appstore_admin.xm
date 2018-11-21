// See http://iphonedevwiki.net/index.php/Logos

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>

%hook ASDPurchase

- (void)setBuyParameters:(NSString *)query
{

    NSMutableCharacterSet *lastSet = [[NSMutableCharacterSet alloc] init];
    [lastSet formUnionWithCharacterSet:[NSCharacterSet characterSetWithCharactersInString:@" =\"#%/<>?@\\^`{}[]|&"]];
    [lastSet formUnionWithCharacterSet:[NSCharacterSet letterCharacterSet]];
    [lastSet formUnionWithCharacterSet:[NSCharacterSet alphanumericCharacterSet]];
    NSString *str = [query stringByAddingPercentEncodingWithAllowedCharacters:lastSet];

    %orig(str);
}

%end
