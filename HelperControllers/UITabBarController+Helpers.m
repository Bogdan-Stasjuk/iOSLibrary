//
//  UITabBarControllerEx.m
//  Причал№1
//
//  Created by Stasjuk Bogdan on 10/3/13.
//  Copyright (c) 2013 Menzulski. All rights reserved.
//

#import "UITabBarController+Helpers.h"

typedef NS_ENUM(NSUInteger, TabBarView) {
    TabBarViewContent,
    TabBarViewBar,
};

@interface UITabBarController()

@property(nonatomic) TabBarView tabBarView;
@property(nonatomic, assign) CGRect frameContentNormal;

@end

@implementation UITabBarController (Helpers)


#pragma mark - UIViewController methods

- (void)viewDidLoad
{
    [super viewDidLoad];

    //[self setContentFrame:[UIScreen mainScreen].bounds];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

    ALog("didReceiveMemoryWarning");
}


#pragma mark - Public methods

#pragma mark -Static methods

+ (void)setAppearanceShadow {
    
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
}

+ (void)setAppearanceItemsTextColorNormal:(UIColor *)normalColor
                              andSelected:(UIColor *)selectedColor {

    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       normalColor, UITextAttributeTextColor,
                                                       nil]
                                             forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       selectedColor, UITextAttributeTextColor,
                                                       nil]
                                             forState:UIControlStateSelected];
}


#pragma mark -Nonstatic methods

- (void)setContentFrame:(CGRect)frame
{
    [[self.view.subviews objectAtIndex:TabBarViewContent] setFrame:frame];
}

@end
