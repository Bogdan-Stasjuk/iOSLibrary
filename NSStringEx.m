#import "NSStringEx.h"

@implementation NSStringEx

+ (BOOL)isEmpty:(NSString *)string{
    if(![[self trim:string] length])
        return YES;
    
    return NO;
}

+ (NSString *)trim:(NSString *)string {
    return [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end