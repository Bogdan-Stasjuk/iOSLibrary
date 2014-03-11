//
//  UITabBarControllerEx.h
//  Причал№1
//
//  Created by Stasjuk Bogdan on 10/3/13.
//  Copyright (c) 2013 Menzulski. All rights reserved.
//

@interface UITabBarController (Helpers)

+ (void)setAppearanceShadow;
+ (void)setAppearanceItemsTextColorNormal:(UIColor *)normalColor
                    andSelected:(UIColor *)selectedColor;

- (void)setContentFrame:(CGRect)frame;

@end
