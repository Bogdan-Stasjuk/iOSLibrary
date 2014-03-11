//
//  UINavigationBarEx.h
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/18/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

@interface UINavigationBar (Helpers)

+ (void)setAppearanceBackgroundImgForSysVerEqualOrGreater7:(UIImage *)imgForSysVerEquelOrGreater7
                                      andImgForSysVerLess7:(UIImage *)imgForSysVerLess7;
+ (void)setBackgroundImgForSysVerEqualOrGreater7:(UIImage *)imgForSysVerEquelOrGreater7
                            andImgForSysVerLess7:(UIImage *)imgForSysVerLess7
                                 onNavController:(UINavigationController *)navCotroller;
//+ (void)customize;
//+ (void)setupBackBtnToViewController:(UIViewController *)viewController;

@end
