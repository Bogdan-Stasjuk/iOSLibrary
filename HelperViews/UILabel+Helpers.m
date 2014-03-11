//
//  UILabelEx.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/18/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "UILabel+Helpers.h"

@implementation UILabel (Helpers)


#pragma mark - Public methods

#pragma mark -Init and setup on view

+ (UILabel *)setupWithFrame:(CGRect)frame
                        andFont:(UIFont *)font
                   andTextColor:(UIColor *)color
             andBackgroundColor:(UIColor *)bgColor
               andTextAlignment:(NSTextAlignment)textAlignment
               andNumberOfLines:(NSUInteger)lines
                         onView:(UIView *)view {
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:frame];
    lbl.font = font;
    lbl.textColor = color;
    lbl.backgroundColor = bgColor;
    lbl.textAlignment = textAlignment;
    lbl.numberOfLines = lines;
    
    [view addSubview:lbl];
    
    return lbl;
}

+ (UILabel *)setupWithFrame:(CGRect)frame
                         andFont:(UIFont *)font
                    andTextColor:(UIColor *)color
                  andShadowColor:(UIColor *)shadowColor
                 andShadowOffset:(CGSize)shadowOffset
              andBackgroundColor:(UIColor *)bgColor
                andTextAlignment:(NSTextAlignment)textAlignment
                andNumberOfLines:(NSUInteger)lines
                          onView:(UIView *)view {
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:frame];

    lbl.font = font;
    lbl.textColor = color;
                              
    lbl.shadowColor = shadowColor;
    lbl.shadowOffset = shadowOffset;
                              
    lbl.backgroundColor = bgColor;
    lbl.textAlignment = textAlignment;
    lbl.numberOfLines = lines;
    
    [view addSubview:lbl];
    
    return lbl;
}


#pragma mark -Setup on view

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


#pragma mark -Config

+ (void)configLabel:(UILabel *)label
         withFrame:(CGRect)frame
           andFont:(UIFont *)font
      andTextColor:(UIColor *)color
andBackgroundColor:(UIColor *)bgColor {
    
    label.frame = frame;
    label.font = font;
    label.textColor = color;
    label.backgroundColor = bgColor;
}

@end
