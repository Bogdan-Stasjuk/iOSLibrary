#import "Settings.h"


@interface Settings()

@end


@implementation Settings

+ (Settings *)sharedInstance
{
    static Settings *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Settings alloc] init];
     });
    return sharedInstance;
}


#pragma mark - Public static methods

+ (UIImage *)image:(ImageFor)imageForItem {
    NSArray *imgNamesArr = @[
                                @"test_image" //
                           ];
    NSString *imgName = [imgNamesArr objectAtIndex:imageForItem];
    
    return [UIImage imageNamed:imgName];
}


+ (NSString *)text:(TextFor)textForItem {
    NSArray *textArr = @[
                         @"test_text" //
                          ];
    return [textArr objectAtIndex:textForItem];
}

+ (CGPoint)point:(PointFor)pointForItem {

    NSArray *pointArr = @[
                             [NSValue valueWithCGPoint:CGPointMake(0.f, 0.f)] //
                         ];
    NSValue *pointValue = [pointArr objectAtIndex:pointForItem];
    
    return [pointValue CGPointValue];
}

+ (CGSize)size:(SizeFor)sizeForItem {
    
    NSArray *sizeArr = @[
                         [NSValue valueWithCGSize:CGSizeMake(0.f, 0.f)] // 
                          ];
    NSValue *sizeValue = [sizeArr objectAtIndex:sizeForItem];

    return [sizeValue CGSizeValue];
}

+ (CGRect)rect:(RectFor)RectForItem {
    NSArray *fontSizesArr = @[
                              [NSValue valueWithCGRect:CGRectMake(0.f, 0.f, 0.f, 0.f)] // 
                              ];
    NSValue *rectValue = [fontSizesArr objectAtIndex:RectForItem];
    
    return [rectValue CGRectValue];
}

- (CGSize)offset:(OffsetFor)offsetForItem {
    NSArray *offsetsArr = @[
                            [NSValue valueWithCGSize:CGSizeMake(0.f, 0.f)] // 
                            ];
    NSValue *offsetValue = [offsetsArr objectAtIndex:offsetForItem];
    
    return [offsetValue CGSizeValue];
}

+ (UIColor *)color:(ColorFor)colorForItem {
    
    NSArray *colorsArr = @[
                           //[UIColor colorWithRed:211.f/255.f green:211.f/255.f blue:211.f/255.f alpha:1.f] // ColorForViewsBgDebug
                           [UIColor colorWithRed:211.f/255.f green:211.f/255.f blue:211.f/255.f alpha:0.f] // ColorForViewsBgDebug
                            ];
    
    return [colorsArr objectAtIndex:colorForItem];
}

+ (CGFloat)alpha:(AlphaFor)alphaForItem {
    
    NSArray *alphaArr = @[
                               @0.f // 
                               ];
    NSNumber *alphaNumber = [alphaArr objectAtIndex:alphaForItem];
    
    return [alphaNumber floatValue];
}

+ (CGFloat)correction:(CorrectionFor)correctionForItem
{
    NSArray *correctionArr = @[
                                    [NSNumber numberWithFloat:0.f], //
                                ];
    NSNumber *correctionNumber = [correctionArr objectAtIndex:correctionForItem];
    
    return [correctionNumber floatValue];
}

+ (NSInteger)integerValue:(IntegerValueFor)integerValueForItem
{
    
    NSArray *integerValuesArr = @[
                                @6 //
                                ];
    NSNumber *integerValueNumber = [integerValuesArr objectAtIndex:integerValueForItem];
    
    return [integerValueNumber integerValue];
}

+ (CGFloat)floatValue:(FloatValueFor)floatValueForItem {
    
    NSArray *floatValuesArr = @[
                                   @0.f // 
                                    
                                ];
    NSNumber *floatValueNumber = [floatValuesArr objectAtIndex:floatValueForItem];
    
    return [floatValueNumber floatValue];
}

+ (UIEdgeInsets)inset:(InsetFor)insetForItem
{
    NSArray *insets = @[
                            [NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(0.f, 0.f, 0.f, 0.f)] // 
                        ];
    
    NSValue *insetValue = [insets objectAtIndex:insetForItem];
    
    return [insetValue UIEdgeInsetsValue];
}

+ (UIOffset)offset:(OffsetFor)offsetForItem {
    
    NSArray *offsetsArr = @[
                                [NSValue valueWithUIOffset:UIOffsetMake(0.f, 0.f)] // 
                            ];
    NSValue *offsetValue = [offsetsArr objectAtIndex:offsetForItem];
    
    return [offsetValue UIOffsetValue];
}

#pragma mark -Font methods

+ (NSString *)fontName:(FontFor)fontForItem {
    NSArray *imgNamesArr = @[
                             @"HelveticaNeue-Bold"
                             ];
    return [imgNamesArr objectAtIndex:fontForItem];
}

+ (CGFloat)fontSize:(FontFor)fontForItem {
    NSArray *fontSizesArr = @[
                                @0.f
                              ];
    NSNumber *fontSizeNumber = [fontSizesArr objectAtIndex:fontForItem];
    
    return [fontSizeNumber floatValue];
}

+ (UIFont *)font:(FontFor)FontForItem {
    
    return [UIFont fontWithName:[Settings fontName:FontForItem]
                           size:[Settings fontSize:FontForItem]];
}


#pragma mark - Shadow methods

+ (CGSize)shadowOffset:(ShadowFor)shadowForItem {
    NSArray *shadowOffsetsArr = @[
                                    [NSValue valueWithCGSize:CGSizeMake(0.f, 0.f)] // 
                                   ];
    NSValue *shadowOffsetValue = [shadowOffsetsArr objectAtIndex:shadowForItem];
    
    return [shadowOffsetValue CGSizeValue];
}

+ (CGFloat)shadowOpacity:(ShadowFor)shadowForItem {
    NSArray *shadowOpacitiesArr = @[
                                    @0.f // 
                                  ];
    NSNumber *shadowOpacityNumber = [shadowOpacitiesArr objectAtIndex:shadowForItem];
    
    return [shadowOpacityNumber floatValue];
}

+ (CGFloat)shadowRadius:(ShadowFor)shadowForItem {
    NSArray *shadowRadiiArr = @[
                                    @0.f // 
                                ];
    NSNumber *shadowRadiusNumber = [shadowRadiiArr objectAtIndex:shadowForItem];
    
    return [shadowRadiusNumber floatValue];
}

+ (CGColorRef)shadowColor:(ShadowFor)shadowForItem {
    
    NSArray *colorsArr = @[
                           [UIColor colorWithRed:211.f/255.f green:211.f/255.f blue:211.f/255.f alpha:0.f], // ColorForViewsBgDebug
                            ];
    UIColor *shadowColor = [colorsArr objectAtIndex:shadowForItem];
    
    return shadowColor.CGColor;
}


#pragma mark - Check system version methods

+ (BOOL)isSysVerLessOrEqualTo:(NSString *)ver {
    
    return ([[[UIDevice currentDevice] systemVersion] compare:ver options:NSNumericSearch] != NSOrderedDescending);
}

+ (BOOL)isSysVerGreaterOrEqualTo:(NSString *)ver {
    
    return ([[[UIDevice currentDevice] systemVersion] compare:ver options:NSNumericSearch] != NSOrderedAscending);
}

+ (BOOL)isSysVerLess7
{
    return ![Settings isSysVerGreaterOrEqualTo:@"7.0"];
}


#pragma mark - Check device methods

+ (BOOL)isIpad
{
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad);
}

+ (BOOL)isIphone3_5inch
{
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone && [Settings screenHeight] == [Settings iphone3_5inchScreenHeight];
}

+ (BOOL)isIphoneGreater3_5inch
{
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone && [Settings screenHeight] > [Settings iphone3_5inchScreenHeight];
}

+ (BOOL)isSimulator
{
    return TARGET_IPHONE_SIMULATOR;
}


#pragma mark - Screen methods

+ (CGFloat)screenWidth
{
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];

    return orientation == UIDeviceOrientationPortrait ? [[UIScreen mainScreen] bounds].size.width
                                                      : [[UIScreen mainScreen] bounds].size.height;
}

+ (CGFloat)screenHeight
{
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];

    return orientation == UIDeviceOrientationPortrait ? [[UIScreen mainScreen] bounds].size.height
                                                      : [[UIScreen mainScreen] bounds].size.width;
}

+ (CGFloat)iphone3_5inchScreenHeight
{
    return 480.f;
}


#pragma mark - Design elements sizes

+ (CGFloat)statusBarHeight
{
    CGSize statusBarSize = [[UIApplication sharedApplication] statusBarFrame].size;
    
    return MIN(statusBarSize.width, statusBarSize.height);
}

/*
#pragma mark - Location methods

+ (CLLocationCoordinate2D)locationCoordinate2D:(LocationCoordinate2DFor)locationCoordinate2DForItem {
    
    NSArray *locationArr = @[
                                [NSValue valueWithCGPoint:CGPointMake(0.0f, 0.0f)] // 
                            ];
    
    NSValue *value = [locationArr objectAtIndex:locationCoordinate2DForItem];
    CGPoint point = [value CGPointValue];
    
    return CLLocationCoordinate2DMake(point.x, point.y);
}
*/

@end
