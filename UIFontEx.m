#import "UIFontEx.h"

@implementation UIFontEx

+ (UIFont *)fontWithName:(NSString *)name andSize:(CGFloat)size {
    UIFont *font = [super fontWithName:name size:size];
    if(!font) {
        font = [UIFont systemFontOfSize:size];
    }
    return font;
}

+ (void)nslogExistingFonts {
    // List all fonts
    NSArray *familyNames = [[NSArray alloc] initWithArray:[UIFont familyNames]];
    NSArray *fontNames;
    NSInteger indFamily, indFont;
    for (indFamily=0; indFamily<[familyNames count]; ++indFamily)
    {
        NSLog(@"Family name: %@", [familyNames objectAtIndex:indFamily]);
        fontNames = [[NSArray alloc] initWithArray:
                     [UIFont fontNamesForFamilyName:
                      [familyNames objectAtIndex:indFamily]]];
        for (indFont=0; indFont < [fontNames count]; ++indFont)
        {
            NSLog(@"    Font name: %@", [fontNames objectAtIndex:indFont]);
        }
     }
}

+ (CGFloat)pixelsToPoints:(CGFloat)px {
    CGFloat pointsPerInch = 72.0; // see: http://en.wikipedia.org/wiki/Point%5Fsize#Current%5FDTP%5Fpoint%5Fsystem
    CGFloat scale = 1; // We dont't use [[UIScreen mainScreen] scale] as we don't want the native pixel, we want pixels for UIFont - it does the retina scaling for us
    float pixelPerInch; // aka dpi
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        pixelPerInch = 132 * scale;
    } else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        pixelPerInch = 163 * scale;
    } else {
        pixelPerInch = 160 * scale;
    }
    CGFloat result = px * pointsPerInch / pixelPerInch;
    
    return result;
}

@end
