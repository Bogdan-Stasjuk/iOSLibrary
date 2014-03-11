//
//  UILabelEx.h
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/18/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

@interface UILabelEx : UILabel

+ (UILabelEx *)initLblWithFrame:(CGRect)frame
                        andFont:(UIFont *)font
                   andTextColor:(UIColor *)color
             andBackgroundColor:(UIColor *)bgColor
               andTextAlignment:(NSTextAlignment)textAlignment
               andNumberOfLines:(NSUInteger)lines
                         onView:(UIView *)view;

+ (void)setupLabel:(UILabel *)label
         withFrame:(CGRect)frame
           andFont:(UIFont *)font
      andTextColor:(UIColor *)color
andBackgroundColor:(UIColor *)bgColor;

+ (void)setupLabel:(UILabel *)label
         withFrame:(CGRect)frame
           andFont:(UIFont *)font
      andTextColor:(UIColor *)color
andBackgroundColor:(UIColor *)bgColor
            onView:(UIView *)view;

@end
