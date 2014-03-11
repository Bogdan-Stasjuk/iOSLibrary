/*
    Kb - keyboard
    Tf - TextField
 */


//#import <CoreLocation/CoreLocation.h>


#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

#define kCellReuseId    @"Cell"

#define NAVBAR_HEIGHT       44.f
#define STATUSBAR_HEIGHT    20.f
#define TABBAR_HEIGHT 98.f
#define TABBAR_HEIGHT_IPAD 56.f
#define IPHONE3_5INCH_HEIGHT 480.f

#define STATUSNAVBAR_HEIGHT (NAVBAR_HEIGHT + STATUSBAR_HEIGHT)

#define SCREEN_WIDTH ((UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ((UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)


#pragma mark - Enums

#pragma mark -ImageFor enum
typedef enum {
    ImageForItem
} ImageFor;

#pragma mark -FontFor enum
typedef enum {
    FontForItem
} FontFor;

#pragma mark -TextFor enum
typedef enum {
    TextForItem
} TextFor;

#pragma mark -PointFor enum
typedef enum {
    PointForItem
} PointFor;

#pragma mark -SizeFor enum
typedef enum {
    SizeForItem
} SizeFor;

#pragma mark -RectFor enum
typedef enum {
    RectForItem
} RectFor;

#pragma mark -ShadowFor enum
typedef enum {
    ShadowForItem
} ShadowFor;

#pragma mark -ColorFor enum
typedef enum {
    ColorForItem
} ColorFor;

#pragma mark -AlphaFor enum
typedef enum {
  AlphaForViewsBg
} AlphaFor;

#pragma mark -CorrectionFor enum
typedef enum {
    CorrectionForItem
} CorrectionFor;

#pragma mark -IntegerValue enum
typedef enum {
    IntegerValueForItem
} IntegerValueFor;

#pragma mark -FloatValue enum
typedef enum {
    FloatValueForItem
} FloatValueFor;

/*
#pragma mark -LocationCoordinate2DFor enum
typedef enum {
    LocationCoordinate2DForItem
} LocationCoordinate2DFor;
*/

#pragma mark -InsetFor enum
typedef enum {
    InsetForItem
} InsetFor;

#pragma mark -OffsetFor enum
typedef enum {
    OffsetForItem
} OffsetFor;


@interface Settings : NSObject

+ (Settings *)sharedInstance;

+ (UIColor *)color:(ColorFor)colorForItem;
+ (CGFloat)alpha:(AlphaFor)alphaForItem;
+ (UIImage *)image:(ImageFor)imageForItem;
+ (NSString *)text:(TextFor)textForItem;

+ (NSInteger)integerValue:(IntegerValueFor)integerValueForItem;
+ (CGFloat)floatValue:(FloatValueFor)floatValueForItem;
+ (CGPoint)point:(PointFor)pointForItem;
+ (CGSize)size:(SizeFor)sizeForItem;
+ (CGRect)rect:(RectFor)rectForItem;
+ (UIEdgeInsets)inset:(InsetFor)insetForItem;
+ (UIOffset)offset:(OffsetFor)offsetForItem;
+ (CGFloat)correction:(CorrectionFor)correctionForItem;

// font
+ (NSString *)fontName:(FontFor)fontForItem;
+ (CGFloat)fontSize:(FontFor)fontForItem;
+ (UIFont *)font:(FontFor)FontForItem;

// shadow
+ (CGSize)shadowOffset:(ShadowFor)shadowForItem;
+ (CGFloat)shadowOpacity:(ShadowFor)shadowForItem;
+ (CGFloat)shadowRadius:(ShadowFor)shadowForItem;
+ (UIColor *)shadowColor:(ShadowFor)shadowForItem;

// Check device methods
+ (BOOL)isIpad;
+ (BOOL)isIphone3_5inch;
+ (BOOL)isIphoneGreater3_5inch;

// Check system version methods
+ (BOOL)isSysVerGreaterOrEqualTo:(NSString *)ver;
+ (BOOL)isSysVerLessOrEqualTo:(NSString *)sysVer;
+ (BOOL)isSysVerLess7;

/*
// Location methods
+ (CLLocationCoordinate2D)locationCoordinate2D:(LocationCoordinate2DFor)locationCoordinate2DForItem;
*/

@end
