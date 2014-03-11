//
//  Email.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/16/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "SKPSMTPMessageHelper.h"
#import "NSData+Base64Additions.h"

@implementation SKPSMTPMessageHelper

+ (SKPSMTPMessage *)sendMessageWithTitle:(NSString *)title
                                 andText:(NSString *)text
                             andFilename:(NSString *)filename
                             andFilepath:(NSString *)filepath
                                delegate:(id)delegate {
    
    SKPSMTPMessage *msg = [[SKPSMTPMessage alloc] init];
    msg.fromEmail = [Settings text:TextForEmailFrom];
    msg.toEmail = [Settings text:TextForEmailTo];
    //msg.ccEmail = @"trydorg@gmail.com";
    //msg.bccEmail = @"";
    msg.relayHost = [Settings text:TextForEmailSmtpHost];
    msg.requiresAuth = YES;
    
    if (msg.requiresAuth) {
        msg.login = [Settings text:TextForEmailLogin];
        msg.pass = [Settings text:TextForEmailPass];
    }
    
    msg.wantsSecure = YES; // smtp.gmail.com doesn't work without TLS!
    
    msg.subject = title;
    
    // Only do this for self-signed certs!
    // msg.validateSSLChain = NO;
    
    msg.delegate = delegate;
    
    NSDictionary *plainPart = [NSDictionary dictionaryWithObjectsAndKeys:@"text/plain", kSKPSMTPPartContentTypeKey,
                                                                       text, kSKPSMTPPartMessageKey,
                                                                       @"8bit", kSKPSMTPPartContentTransferEncodingKey,
                                                                       nil];
    
    if (filename && filepath) {
        
        NSData *orderData = [NSData dataWithContentsOfFile:filepath];
        NSDictionary *attachPart = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [NSString stringWithFormat:@"text/directory;\r\n\tx-unix-mode=0644;\r\n\tname=\"%@\"", filename], kSKPSMTPPartContentTypeKey,
                                    [NSString stringWithFormat:@"attachment;\r\n\tfilename=\"%@\"", filename], kSKPSMTPPartContentDispositionKey,
                                    [orderData encodeBase64ForData], kSKPSMTPPartMessageKey,
                                    @"base64", kSKPSMTPPartContentTransferEncodingKey,
                                    nil];
        msg.parts = [NSArray arrayWithObjects:plainPart, attachPart, nil];
        
    } else {
        
        msg.parts = [NSArray arrayWithObjects:plainPart, nil];
    }
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [msg send];
    });
    
    return msg;
}

@end
