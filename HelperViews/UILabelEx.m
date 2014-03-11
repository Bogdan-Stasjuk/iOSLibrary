//
//  UILabelEx.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/18/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "UILabelEx.h"

@implementation UILabelEx

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/


#pragma mark -Public methods

+ (UILabelEx *)initLblWithFrame:(CGRect)frame
                        andFont:(UIFont *)font
                   andTextColor:(UIColor *)color
             andBackgroundColor:(UIColor *)bgColor
               andTextAlignment:(NSTextAlignment)textAlignment
               andNumberOfLines:(NSUInteger)lines
                         onView:(UIView *)view {
    
    UILabelEx *lbl = [[UILabelEx alloc] initWithFrame:frame];
    lbl.font = font;
    lbl.textColor = color;
    lbl.backgroundColor = bgColor;
    lbl.textAlignment = textAlignment;
    lbl.numberOfLines = lines;
    
    [view addSubview:lbl];
    
    return lbl;
}

+ (void)setupLabel:(UILabel *)label
         withFrame:(CGRect)frame
           andFont:(UIFont *)font
      andTextColor:(UIColor *)color
andBackgroundColor:(UIColor *)bgColor {
    
    label.frame = frame;
    label.font = font;
    label.textColor = color;
    label.backgroundColor = bgColor;
}

+ (void)setupLabel:(UILabel *)label
         withFrame:(CGRect)frame
           andFont:(UIFont *)font
      andTextColor:(UIColor *)color
andBackgroundColor:(UIColor *)bgColor
            onView:(UIView *)view {

    label.frame = frame;
    label.font = font;
    label.textColor = color;
    label.backgroundColor = bgColor;
    
    [view addSubview:label];
}


@end
