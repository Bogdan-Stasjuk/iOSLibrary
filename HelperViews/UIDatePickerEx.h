//
//  UIDatePicker+Helpers.h
//  Причал№1
//
//  Created by Stasjuk Bogdan on 10/8/13.
//  Copyright (c) 2013 Menzulski. All rights reserved.
//

@interface UIDatePickerEx : UIDatePicker

- (id)initWithMode:(UIDatePickerMode)mode
       andLocaleId:(NSString *)localeId
      forTextField:(UITextField *)textField;

@end
