//
//  UINavigationBarEx.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/18/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "UINavigationBar+Helpers.h"
#import "UIFontEx.h"

@implementation UINavigationBar (Helpers)


#pragma mark -Public methods

+ (void)setAppearanceBackgroundImgForSysVerEqualOrGreater7:(UIImage *)imgForSysVerEquelOrGreater7
                                      andImgForSysVerLess7:(UIImage *)imgForSysVerLess7
{
    UIImage *navBarImgBg = imgForSysVerEquelOrGreater7;

    if (SYSTEM_VERSION_LESS_THAN(@"7.0"))
    {
        navBarImgBg = imgForSysVerLess7;
    }

    [[UINavigationBar appearance] setBackgroundImage:navBarImgBg
                                       forBarMetrics:UIBarMetricsDefault];
}

+ (void)setBackgroundImgForSysVerEqualOrGreater7:(UIImage *)imgForSysVerEquelOrGreater7
                                      andImgForSysVerLess7:(UIImage *)imgForSysVerLess7
                              onNavController:(UINavigationController *)navCotroller
{
    UIImage *navBarImgBg = imgForSysVerEquelOrGreater7;
    
    if (SYSTEM_VERSION_LESS_THAN(@"7.0"))
    {
        navBarImgBg = imgForSysVerLess7;
    }
    
    [navCotroller.navigationBar setBackgroundImage:navBarImgBg
                                       forBarMetrics:UIBarMetricsDefault];
}

@end
