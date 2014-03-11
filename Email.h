//
//  Email.h
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/16/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "SKPSMTPMessage.h"

@interface Email : NSObject

+ (SKPSMTPMessage *)sendMessageWithOrderNumber:(NSString *)number
                        andOrderer:(NSString *)orderer
                         andDateOn:(NSString *)dateOn
                          andEmail:(NSString *)email
                       andFilepath:(NSString *)filepath
                      withDelegate:(id)delegate;

@end
