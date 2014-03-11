//
//  UIBarButtonItem+Helpers.m
//  Причал№1
//
//  Created by Stasjuk Bogdan on 10/9/13.
//  Copyright (c) 2013 Menzulski. All rights reserved.
//

#import "UIBarButtonItem+Helpers.h"
#import "NavigationController.h"

@implementation UIBarButtonItem (Helpers)

+ (void)customizeAppearance
{
    UIColor *colorTitleText = [Settings color:ColorForNavBarBtnText];
    NSDictionary *titleTextAttributes = [NavigationController getTitleTextAttributesWithTextColor:colorTitleText andFontSize:15.f];
    [[UIBarButtonItem appearance] setTitleTextAttributes:titleTextAttributes
                                                forState:UIControlStateNormal];
    [[UIBarButtonItem appearance] setTitleTextAttributes:titleTextAttributes
                                                forState:UIControlStateHighlighted];
    
    UIImage *buttonImage = [[Settings image:ImageForNavBarBtn] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 6, 0, 6)];
    [[UIBarButtonItem appearance] setBackgroundImage:buttonImage
                                            forState:UIControlStateNormal
                                          barMetrics:UIBarMetricsDefault];
    
    [[UIBarButtonItem appearance] setBackButtonBackgroundVerticalPositionAdjustment:8.f forBarMetrics:UIBarMetricsDefault];
}
@end
