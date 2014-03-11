//
//  UIViewEx.h
//  ElixirTracksListExample
//
//  Created by StasjukBogdan on 03.09.13.
//  Copyright (c) 2013 Stasjuk Bogdan. All rights reserved.
//

@interface UIViewEx : UIView

+ (void)addShadowForItem:(ShadowFor)shadowForItem
                  onView:(UIView *)view;
+ (void)shiftView:(UIView *)view
withAnimationDuration:(CGFloat)animationDuration
          toFrame:(CGRect)frame;
@end
