//
//  Email.h
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/16/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "SKPSMTPMessage.h"

@interface SKPSMTPMessageHelper : NSObject

+ (SKPSMTPMessage *)sendMessageWithTitle:(NSString *)title
                                 andText:(NSString *)text
                             andFilename:(NSString *)filename
                             andFilepath:(NSString *)filepath
                                delegate:(id)delegate;

@end
