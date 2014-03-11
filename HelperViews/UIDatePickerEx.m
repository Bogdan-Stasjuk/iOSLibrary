//
//  UIDatePicker+Helpers.m
//  Причал№1
//
//  Created by Stasjuk Bogdan on 10/8/13.
//  Copyright (c) 2013 Menzulski. All rights reserved.
//

#import "UIDatePickerEx.h"
#import "UIButton+Helpers.h"

#define kToolbarHeight 44.f

@interface UIDatePickerEx ()
{

}

@property(nonatomic, strong) NSString       *localeId;
@property(nonatomic, strong) UITextField    *textField;

@end

@implementation UIDatePickerEx

- (id)initWithMode:(UIDatePickerMode)mode
       andLocaleId:(NSString *)localeId
      forTextField:(UITextField *)textField
{
    self = [super init];
    if (self) {

        [self setDatePickerMode:mode];
        [self addTarget:self
                   action:@selector(valueChanged)
         forControlEvents:UIControlEventValueChanged];
        
        self.localeId = localeId;
        if ([[NSLocale availableLocaleIdentifiers] containsObject:localeId]) {
            self.locale = [[NSLocale alloc] initWithLocaleIdentifier:localeId];
        }
        
        self.textField = textField;
        textField.inputAccessoryView = [self setupToolbarWithAction:@selector(valueSelected)];
    }
    
    return self;
}

- (UIToolbar *)setupToolbarWithAction:(SEL)action
{
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0,
                                                                     SCREEN_HEIGHT - kToolbarHeight,
                                                                     SCREEN_WIDTH,
                                                                     kToolbarHeight)];
    toolbar.barStyle = UIBarStyleDefault;
    
    UIButton *btn = [UIButton setupAtPoint:CGPointZero
                                  andTitle:[Settings text:TextForReserveDatePickerDone]
                                   andFont:[UIFont systemFontOfSize:15.f]
                             andTitleColor:[UIColor blueColor]
                            andTitleColorS:[UIColor lightGrayColor]
                                 addTarget:self
                                    action:@selector(valueSelected)
                                    onView:nil];
    
    
    UIBarButtonItem *btnItemInfo = [[UIBarButtonItem alloc] init];
    [btnItemInfo setCustomView:btn];
    
    NSArray *toolbarButtons = [NSArray arrayWithObject:btnItemInfo];
    [toolbar setItems:toolbarButtons  animated:YES];
    
    return toolbar;
}


#pragma mark - Actions

- (void)valueChanged
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    
    if ([[NSLocale availableLocaleIdentifiers] containsObject:self.localeId]) {
        dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:self.localeId];
    }
    
    NSString *dateString = [dateFormatter stringFromDate:self.date];
    self.textField.text = dateString;
}

- (void)valueSelected
{
    [self.textField resignFirstResponder];
}

@end
