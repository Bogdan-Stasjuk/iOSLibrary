@interface UIButtonEx : UIButton

+ (UIButtonEx *)setupBtnWithFrame:(CGRect)frame
                   andNormalImg:(UIImage *)normalImg
                  andPressedImg:(UIImage *)pressedImg
              andActionSelector:(SEL)selector
                      forTarget:(id)target
                         onView:(UIView *)view;

- (id)initWithFrame:(CGRect)frame
   andNormalImgName:(NSString *)normalImgName
  andPressedImgName:(NSString *)pressedImgName
  andActionSelector:(SEL)selector
          forTarget:(id)target;

- (id)initWithFrame:(CGRect)frame
       andNormalImg:(UIImage *)normalImg
      andPressedImg:(UIImage *)pressedImg
  andActionSelector:(SEL)selector
          forTarget:(id)target;

@end
