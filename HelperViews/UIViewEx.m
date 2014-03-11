//
//  UIViewEx.m
//  ElixirTracksListExample
//
//  Created by StasjukBogdan on 03.09.13.
//  Copyright (c) 2013 Stasjuk Bogdan. All rights reserved.
//

#import "UIViewEx.h"

#import <QuartzCore/QuartzCore.h>

@implementation UIViewEx


#pragma mark -Public methods

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/


#pragma mark -Static public methods

+ (void)addShadowForItem:(ShadowFor)shadowForItem onView:(UIView *)view {
    view.layer.shadowColor = [SETTINGS shadowColor:shadowForItem];
    view.layer.shadowOffset = [SETTINGS shadowOffset:shadowForItem];
    view.layer.shadowOpacity = [SETTINGS shadowOpacity:shadowForItem];
    view.layer.shadowRadius = [SETTINGS shadowRadius:shadowForItem];
}

+ (void)shiftView:(UIView *)view
withAnimationDuration:(CGFloat)animationDuration
          toFrame:(CGRect)frame {

    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:animationDuration];
    view.frame = frame;
    [UIView commitAnimations];
}

@end
