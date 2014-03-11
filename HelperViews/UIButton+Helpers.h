@interface UIButton (Helpers)

+ (UIButton *)setupBtnWithFrame:(CGRect)frame
                        addTarget:(id)target
                           action:(SEL)selector
                 forControlEvents:(UIControlEvents)controlEvents
                           onView:(UIView *)view;

+ (UIButton *)setupBtnWithFrame:(CGRect)frame
            andImgViewContentMode:(UIViewContentMode)imgViewContentMode
                andImgViewBgColor:(UIColor *)imgViewBgColor
                        addTarget:(id)target
                           action:(SEL)selector
                 forControlEvents:(UIControlEvents)controlEvents
                           onView:(UIView *)view;

+ (UIButton *)setupBtnWithFrame:(CGRect)frame
                     andNormalImg:(UIImage *)normalImg
                    andPressedImg:(UIImage *)pressedImg
                andActionSelector:(SEL)selector
                        forTarget:(id)target
                           onView:(UIView *)view;

+ (UIButton *)setupWithFrame:(CGRect)frame
              andNormalImgName:(NSString *)normalImgName
             andPressedImgName:(NSString *)pressedImgName
             andActionSelector:(SEL)selector
                     forTarget:(id)target;

+ (UIButton *)setupAtPoint:(CGPoint)point
                  andTitle:(NSString *)title
                   andFont:(UIFont *)font
             andTitleColor:(UIColor *)titleColor
            andTitleColorS:(UIColor *)titleColorS
                 addTarget:(id)target
                    action:(SEL)selector
                    onView:(UIView *)view;

- (id)initWithFrame:(CGRect)frame
       andNormalImg:(UIImage *)normalImg
      andPressedImg:(UIImage *)pressedImg
  andActionSelector:(SEL)selector
          forTarget:(id)target;

@end
