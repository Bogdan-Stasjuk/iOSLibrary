#import "UIButtonEx.h"

@implementation UIButtonEx


#pragma mark -Public methods


#pragma mark -UIView methods

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


#pragma mark -Other public methods

- (id)initWithFrame:(CGRect)frame
   andNormalImgName:(NSString *)normalImgName
  andPressedImgName:(NSString *)pressedImgName
  andActionSelector:(SEL)selector
          forTarget:(id)target {
    
    UIImage *normalImg = [UIImage imageNamed:normalImgName];
    UIImage *selectedImg = [UIImage imageNamed:pressedImgName];
    
    return [[UIButtonEx alloc] initWithFrame:frame
                                andNormalImg:normalImg
                               andPressedImg:selectedImg
                           andActionSelector:selector
                                   forTarget:target];
}

- (id)initWithFrame:(CGRect)frame
   andNormalImg:(UIImage *)normalImg
  andPressedImg:(UIImage *)pressedImg
  andActionSelector:(SEL)selector
          forTarget:(id)target {
    
    self = [super initWithFrame:frame];
    if(self) {
        [self setImage:normalImg forState:UIControlStateNormal];
        [self setImage:pressedImg forState:UIControlStateHighlighted];
        [self addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

+ (UIButtonEx *)setupBtnWithFrame:(CGRect)frame
                   andNormalImg:(UIImage *)normalImg
                  andPressedImg:(UIImage *)pressedImg
              andActionSelector:(SEL)selector
                      forTarget:(id)target
                         onView:(UIView *)view {
    
    UIButtonEx *btn = [[UIButtonEx alloc] initWithFrame:frame
                                andNormalImg:normalImg
                               andPressedImg:pressedImg
                           andActionSelector:selector
                                   forTarget:target];
    [view addSubview:btn];
    
    return btn;
}


@end
