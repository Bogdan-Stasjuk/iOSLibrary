//
//  UIView+Motion.m
//  Kid Loki
//
//  Created by Conor Winders on 16/09/2013.
//
//	Copyright 2013 Redwind Software Providers Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "UIView+Motion.h"

@implementation UIView (Motion)

- (void)removeMotionEffects {
	NSArray *motionEffects = [NSArray arrayWithArray:self.motionEffects];
	[motionEffects enumerateObjectsUsingBlock:^(UIMotionEffect *motionEffect, NSUInteger idx, BOOL *stop) {
		[self removeMotionEffect:motionEffect];
	}];
	
}

- (void)addMotionEffects:(CGFloat)offset {
	[self removeMotionEffects];
	
	UIInterpolatingMotionEffect *horizontal = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
	horizontal.minimumRelativeValue = @(-offset);
	horizontal.maximumRelativeValue = @(offset);
	
	UIInterpolatingMotionEffect *vertical = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
	vertical.minimumRelativeValue = @(-offset);
	vertical.maximumRelativeValue = @(offset);
	
	UIMotionEffectGroup *motionEffects = [[UIMotionEffectGroup alloc] init];
	motionEffects.motionEffects = @[horizontal, vertical];
	
	[self addMotionEffect:motionEffects];
}

@end