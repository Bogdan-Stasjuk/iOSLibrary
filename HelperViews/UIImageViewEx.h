//
//  UIImageViewEx.h
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/21/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

@protocol UIImageViewFullsrcDelegate;

@interface UIImageViewEx : UIImageView <UIGestureRecognizerDelegate>

@property(nonatomic, assign) CGRect                         frameFullscr;
@property(nonatomic, weak) id<UIImageViewFullsrcDelegate>   delegateFullsrc;
@property(nonatomic, assign) BOOL                           enableFullscreenMode;

+ (UIImageViewEx *)setupWithFrame:(CGRect)frame
                         andImage:(UIImage *)image
                           onView:(UIView *)view;

- (void)setupFullscreenModeWithFrame:(CGRect)frameFullscr
                    onViewController:(UIViewController *)viewController;

@end

@protocol UIImageViewFullsrcDelegate <NSObject>

@required

@optional

- (void)toFullsrcBefore;
- (void)fromFullsrcBefore;
- (void)toFullsrcAfter;
- (void)fromFullsrcAfter;

@end