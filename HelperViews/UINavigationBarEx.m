//
//  UINavigationBarEx.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/18/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "UINavigationBarEx.h"
#import "UIFontEx.h"

@implementation UINavigationBarEx

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


#pragma mark -Public methods

+ (void)customize {
    UIImage *navBarImgBg = [SETTINGS image:ImageForNavBarBg];
    
    if (SYSTEM_VERSION_LESS_THAN(@"7.0")) {
        navBarImgBg = [UINavigationBarEx resizeNavBarImg:navBarImgBg];
    }

    [[UINavigationBar appearance] setBackgroundImage:navBarImgBg
                                       forBarMetrics:UIBarMetricsDefault];

    [self customizeTitles];
    
    //[self customizeBackBtn];
    [self customizeNormalBtn];
}

+ (void)setupBackBtnToViewController:(UIViewController *)viewController {
    
    UIImage *backButtonImage = [[SETTINGS image:ImageForNavBarBtnBack]
                                resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 6)];
    
    UIImage *backButtonImageS = [[SETTINGS image:ImageForNavBarBtnBackS]
                                 resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 6)];



    UIBarButtonItem *btnBack = [[UIBarButtonItem alloc] initWithTitle:viewController.navigationItem.title
                                                                style:UIBarButtonItemStylePlain
                                                               target:nil
                                                               action:nil];
    [btnBack setBackButtonBackgroundImage:backButtonImage
                                 forState:UIControlStateNormal
                               barMetrics:UIBarMetricsDefault];
    [btnBack setBackButtonBackgroundImage:backButtonImageS
                                 forState:UIControlStateHighlighted
                               barMetrics:UIBarMetricsDefault];
  
    viewController.navigationItem.backBarButtonItem = btnBack;
}



#pragma mark -Private methods

+ (UIImage *)resizeNavBarImg:(UIImage *)img {
    CGSize navBarSize = CGSizeMake(SCREEN_WIDTH, NAVBAR_HEIGHT);
    
    UIGraphicsBeginImageContext(navBarSize);
    [img drawInRect:CGRectMake(0, 0, navBarSize.width, navBarSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

+ (void)customizeBackBtn_IOS6 {
    // Change the appearance of back button
    UIImage *backButtonImage = [[SETTINGS image:ImageForNavBarBtnBack]
                                resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 6)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    UIImage *backButtonImageS = [[SETTINGS image:ImageForNavBarBtnBackS]
                                 resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 6)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImageS
                                                      forState:UIControlStateHighlighted
                                                    barMetrics:UIBarMetricsDefault];
}

+ (void)customizeNormalBtn {
    // Change the appearance of other navigation button
    UIImage *barButtonImage = [[SETTINGS image:ImageForNavBarBtnNormal]
                               resizableImageWithCapInsets:UIEdgeInsetsMake(0, 6, 0, 6)];
    [[UIBarButtonItem appearance] setBackgroundImage:barButtonImage
                                            forState:UIControlStateNormal
                                          barMetrics:UIBarMetricsDefault];
    
    UIImage *barButtonImageS = [[SETTINGS image:ImageForNavBarBtnNormalS]
                                resizableImageWithCapInsets:UIEdgeInsetsMake(0, 6, 0, 6)];
    [[UIBarButtonItem appearance] setBackgroundImage:barButtonImageS
                                            forState:UIControlStateSelected
                                          barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackgroundImage:barButtonImageS
                                            forState:UIControlStateHighlighted
                                          barMetrics:UIBarMetricsDefault];
}

+ (void)customizeTitles {
    //[UIFontEx nslogExistingFonts];

    NSDictionary *titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                         [SETTINGS color:ColorForNavBarText], UITextAttributeTextColor,
                                          nil];
    NSDictionary *btnTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                       [SETTINGS color:ColorForNavBarText], UITextAttributeTextColor,
                                       nil];

    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")) {
        
        UIFont *fontTilte = [UIFont fontWithName:[SETTINGS fontName:FontForDishInfo]
                                            size:35.f];
        titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                             [SETTINGS color:ColorForNavBarText], UITextAttributeTextColor,
                                             fontTilte, UITextAttributeFont,
                                             nil];
        
        UIFont *fontBtn = [UIFont fontWithName:[SETTINGS fontName:FontForDishInfo]
                                          size:20.f];
        btnTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                           [SETTINGS color:ColorForNavBarText], UITextAttributeTextColor,
                                           fontBtn, UITextAttributeFont,
                                           nil];
    }

    [[UINavigationBar appearance] setTitleTextAttributes:titleTextAttributes];

    [[UIBarButtonItem appearance] setTitleTextAttributes:btnTextAttributes
                                                forState:UIControlStateNormal];
    [[UIBarButtonItem appearance] setTitleTextAttributes:btnTextAttributes
                                                forState:UIControlStateHighlighted];
}

@end
