//
//  UITextViewEx.h
//  Причал№1
//
//  Created by Stasjuk Bogdan on 10/4/13.
//  Copyright (c) 2013 Menzulski. All rights reserved.
//

@protocol UITextViewDelegateEx <UITextViewDelegate>

@optional

- (void)textChanged;

@end


@interface UITextViewEx : UITextView

@property(nonatomic,assign) id<UITextViewDelegateEx> delegate;

@end
