//
//  UITextViewEx.m
//  Причал№1
//
//  Created by Stasjuk Bogdan on 10/4/13.
//  Copyright (c) 2013 Menzulski. All rights reserved.
//

#import "UITextViewEx.h"

@implementation UITextViewEx

- (void)setText:(NSString *)text {
    
    [super setText:text];
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(textChanged)]) {
        
        [self.delegate textChanged];
    }
}

@end
