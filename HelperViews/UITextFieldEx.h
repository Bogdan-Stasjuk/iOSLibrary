//
//  UITextFieldEx.h
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/17/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

@interface UITextFieldEx : UITextField

+ (UITextField *)setupTextFieldWithFrame:(CGRect)frame
                                 andFont:(UIFont *)font
                            andTextColor:(UIColor *)textColor
                        andTextAlignment:(NSTextAlignment)textAlignment
                          andPlaceholder:(NSString *)placeholder
                                  andTag:(NSInteger)tag
                             andDelegate:(id)delegate
                                  onView:(UIView *)view;

+ (void)setBorderForTextField:(UITextField *)textField;

@end
