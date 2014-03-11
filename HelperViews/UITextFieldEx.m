//
//  UITextFieldEx.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/17/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "UITextFieldEx.h"

@implementation UITextFieldEx

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}


#pragma mark - Public static methods

+ (UITextField *)setupTextFieldWithFrame:(CGRect)frame
                                 andFont:(UIFont *)font
                            andTextColor:(UIColor *)textColor
                        andTextAlignment:(NSTextAlignment)textAlignment
                          andPlaceholder:(NSString *)placeholder
                                  andTag:(NSInteger)tag
                             andDelegate:(id)delegate
                                  onView:(UIView *)view {

    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    textField.borderStyle = UITextBorderStyleNone;
    textField.font = font;
    textField.textColor = textColor;
    textField.placeholder = placeholder;
    textField.autocorrectionType = UITextAutocorrectionTypeNo;
    textField.keyboardType = UIKeyboardTypeDefault;
    textField.returnKeyType = UIReturnKeyDone;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField.textAlignment = textAlignment;
    textField.tag = tag;
    textField.delegate = delegate;
    
    [UITextFieldEx setBorderForTextField:textField];
    
    [view addSubview:textField];

    return textField;
}

+ (void)setBorderForTextField:(UITextField *)textField {
    textField.layer.cornerRadius=8.0f;
    textField.layer.masksToBounds=YES;
    textField.layer.borderColor=[[UIColor clearColor] CGColor];
    textField.layer.borderWidth= 1.0f;
}


#pragma mark - Private methods

@end
