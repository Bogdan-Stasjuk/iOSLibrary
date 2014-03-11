//
//  UIImageViewEx.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/21/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "UIImageViewEx.h"

@interface UIImageViewEx() {
    
}

@property(nonatomic, strong) UITapGestureRecognizer *tapGestureRecognizer;
@property(nonatomic, assign) BOOL                   isFullScreen;
@property(nonatomic, assign) BOOL                   inProcess;
@property(nonatomic, assign) CGRect                 prevFrame;
@property(nonatomic, strong) UIView                 *viewFullscrBg;


@property(nonatomic, strong) UIViewController   *parent;

@end

@implementation UIImageViewEx

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}


#pragma mark -Public properties


#pragma mark -Public methods

+ (UIImageViewEx *)setupWithFrame:(CGRect)frame
                       andImage:(UIImage *)image
                         onView:(UIView *)view
{
    UIImageViewEx *imgView = [[UIImageViewEx alloc] initWithFrame:frame];
    imgView.image = image;

    [view addSubview:imgView];

    return imgView;
}

- (void)setupFullscreenModeWithFrame:(CGRect)frameFullscr
                    onViewController:(UIViewController *)viewController {
    
    self.viewFullscrBg = [[UIView alloc] initWithFrame:frameFullscr];
    self.viewFullscrBg.backgroundColor = [Settings color:ColorForNewsDetailImgMainFullscrBg];
    self.viewFullscrBg.alpha = 0.f;
    
    self.frameFullscr = frameFullscr;
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                           action:@selector(imgToFullScreen)];
    tapGestureRecognizer.delegate = self;
    
    [viewController.view addGestureRecognizer:tapGestureRecognizer];
    
    self.parent = viewController;
    self.userInteractionEnabled = YES;
    self.enableFullscreenMode = YES;
}

#pragma mark -Private methods

-(void)imgToFullScreen {
    if (!self.enableFullscreenMode || self.inProcess) {
        return;
    }
    self.inProcess = YES;
    
    if (!self.isFullScreen) {

        self.prevFrame = self.frame;
        
        CGRect imgFrame = self.prevFrame;
        if ([Settings isIpad]) {
            imgFrame.origin.x = 560;
            imgFrame.origin.y += 65;
        }
        self.frame = imgFrame;

        
        [UIView animateWithDuration:0.23f delay:0 options:0 animations:^{
            
            
            [[UIApplication sharedApplication] setStatusBarHidden:YES
                                                    withAnimation:UIStatusBarAnimationSlide];

            if (self.delegateFullsrc && [self.delegateFullsrc respondsToSelector:@selector(toFullsrcBefore)]) {
                [self.delegateFullsrc toFullsrcBefore];
            }

            self.contentMode = UIViewContentModeScaleAspectFit;
            
           for (UIView *subview in [self subviews]) {
                subview.hidden = YES;
            }
            

            self.viewFullscrBg.alpha = 1.f;
            [self setFrame:self.frameFullscr];

            if (self.parent) {
                [self.parent.navigationController setNavigationBarHidden:YES animated:YES];
                self.parent.tabBarController.tabBar.hidden = YES;
            
                [self.parent.view addSubview:self.viewFullscrBg];
                [self.parent.view addSubview:self];
            }
            
        }completion:^(BOOL finished){
            
            if (self.delegateFullsrc && [self.delegateFullsrc respondsToSelector:@selector(toFullsrcAfter)]) {
                [self.delegateFullsrc toFullsrcAfter];
            }

            self.isFullScreen = YES;
            self.inProcess = NO;
        }];
    } else {

        [UIView animateWithDuration:0.23f delay:0 options:0 animations:^{
            
            if (self.delegateFullsrc && [self.delegateFullsrc respondsToSelector:@selector(fromFullsrcBefore)]) {
                [self.delegateFullsrc fromFullsrcBefore];
            }

            CGRect imgFrame = self.prevFrame;
            if ([Settings isIpad]) {
                imgFrame.origin.x = 560;
                imgFrame.origin.y += 65;
            }
            self.frame = imgFrame;

            
            self.viewFullscrBg.alpha = 0.f;
            
            [[UIApplication sharedApplication] setStatusBarHidden:NO
                                                    withAnimation:UIStatusBarAnimationSlide];

            if (self.parent) {

                [self.parent.navigationController setNavigationBarHidden:NO animated:YES];
                self.parent.tabBarController.tabBar.hidden = NO;
            }

        }completion:^(BOOL finished){

            [self removeFromSuperview];
            [self.viewFullscrBg removeFromSuperview];

            [self setFrame:self.prevFrame];

            self.contentMode = UIViewContentModeScaleToFill;

            for (UIView *subview in [self subviews]) {
                subview.hidden = NO;
            }
            
            if (self.delegateFullsrc && [self.delegateFullsrc respondsToSelector:@selector(fromFullsrcAfter)]) {
                [self.delegateFullsrc fromFullsrcAfter];
            }

            self.isFullScreen = NO;
            self.inProcess = NO;
        }];
    }
}


#pragma mark -UIGestureRecognizerDelegate methods

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer
       shouldReceiveTouch:(UITouch *)touch;
{
    return touch.view == self;
}

@end
