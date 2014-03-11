//
//  UIView+Motion.h
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

#import <UIKit/UIKit.h>

#define BACKGROUND_LAYER -25.0
#define CONTENT_LAYER 75.0
#define INTERFACE_LAYER 25.0

@interface UIView (Motion)

- (void)removeMotionEffects;
- (void)addMotionEffects:(CGFloat)offset;

@end
