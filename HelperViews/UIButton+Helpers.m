#import "UIButton+Helpers.h"

@implementation UIButton (Helpers)

#pragma mark - Public methods

#pragma mark -Static methods

+ (UIButton *)setupBtnWithFrame:(CGRect)frame
                        addTarget:(id)target
                           action:(SEL)selector
                 forControlEvents:(UIControlEvents)controlEvents
                           onView:(UIView *)view {
    
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn addTarget:target action:selector forControlEvents:controlEvents];
    btn.backgroundColor = [Settings color:ColorForViewsBgDebug];

    [view addSubview:btn];
    
    return btn;
}

+ (UIButton *)setupBtnWithFrame:(CGRect)frame
            andImgViewContentMode:(UIViewContentMode)imgViewContentMode
                andImgViewBgColor:(UIColor *)imgViewBgColor
                        addTarget:(id)target
                           action:(SEL)selector
                 forControlEvents:(UIControlEvents)controlEvents
                           onView:(UIView *)view {
    
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn addTarget:target action:selector forControlEvents:controlEvents];
    btn.imageView.contentMode = imgViewContentMode;
    btn.imageView.backgroundColor = imgViewBgColor;

    btn.backgroundColor = [Settings color:ColorForViewsBgDebug];

    [view addSubview:btn];
    
    return btn;
}

+ (UIButton *)setupBtnWithFrame:(CGRect)frame
                     andNormalImg:(UIImage *)normalImg
                    andPressedImg:(UIImage *)pressedImg
                andActionSelector:(SEL)selector
                        forTarget:(id)target
                           onView:(UIView *)view {
    
    UIButton *btn = [[UIButton alloc] initWithFrame:frame
                                           andNormalImg:normalImg
                                          andPressedImg:pressedImg
                                      andActionSelector:selector
                                              forTarget:target];
    [view addSubview:btn];
    
    return btn;
}

+ (UIButton *)setupWithFrame:(CGRect)frame
   andNormalImgName:(NSString *)normalImgName
  andPressedImgName:(NSString *)pressedImgName
  andActionSelector:(SEL)selector
          forTarget:(id)target {
    
    UIImage *normalImg = [UIImage imageNamed:normalImgName];
    UIImage *selectedImg = [UIImage imageNamed:pressedImgName];
    
    return [[UIButton alloc] initWithFrame:frame
                                andNormalImg:normalImg
                               andPressedImg:selectedImg
                           andActionSelector:selector
                                   forTarget:target];
}

+ (UIButton *)setupAtPoint:(CGPoint)point
                  andTitle:(NSString *)title
                   andFont:(UIFont *)font
             andTitleColor:(UIColor *)titleColor
            andTitleColorS:(UIColor *)titleColorS
                 addTarget:(id)target
                    action:(SEL)selector
                    onView:(UIView *)view
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    if (font) {

        btn.titleLabel.font = font;

    } else {
        
        font = btn.titleLabel.font;
    }
    
    CGRect textFrame = CGRectNull;
    if ([Settings isSysVerLess7])
    {
        CGSize textSize = [title sizeWithFont:font];
        textFrame.size.width = textSize.width;
        textFrame.size.height = textSize.height;
    }
    else
    {
        textFrame = [title boundingRectWithSize:CGSizeMake(CGFLOAT_MAX,
                                                                  CGFLOAT_MAX)
                                                 options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                              attributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          font, NSFontAttributeName,
                                                          nil]
                                                 context:nil];
    }
    
    btn.frame = CGRectMake(point.x, point.y, textFrame.size.width, textFrame.size.height);
    [btn setTitle:title forState:UIControlStateNormal];
    
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setTitleColor:titleColorS forState:UIControlStateHighlighted];
    
    btn.backgroundColor = [Settings color:ColorForViewsBgDebug];
    
    [view addSubview:btn];
    
    return btn;
}


#pragma mark -Nonstatic methods

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
        self.backgroundColor = [Settings color:ColorForViewsBgDebug];
    }
    
    return self;
}


@end
