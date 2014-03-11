@interface UIFontEx : UIFont

+ (UIFont *)fontWithName:(NSString *)name andSize:(CGFloat)size;
+ (void)nslogExistingFonts;
+ (CGFloat)pixelsToPoints:(CGFloat)px;

@end
