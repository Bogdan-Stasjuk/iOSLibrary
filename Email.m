//
//  Email.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/16/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "Email.h"
#import "NSData+Base64Additions.h"

@implementation Email

+ (SKPSMTPMessage *)sendMessageWithOrderNumber:(NSString *)number
                        andOrderer:(NSString *)orderer
                         andDateOn:(NSString *)dateOn
                          andEmail:(NSString *)email
                       andFilepath:(NSString *)filepath
                      withDelegate:(id)delegate {
    
    SKPSMTPMessage *msg = [[SKPSMTPMessage alloc] init];
    msg.fromEmail = [SETTINGS text:TextForEmailFrom];
    msg.toEmail = [[SETTINGS text:TextForEmailTo] stringByAppendingFormat:@",%@", email];
    msg.relayHost = [SETTINGS text:TextForEmailSmtpHost];
    msg.requiresAuth = YES;
    //msg.bccEmail = @"Bogdan.Stasjuk@gmail.com";
    
    if (msg.requiresAuth) {
        msg.login = [SETTINGS text:TextForEmailLogin];
        msg.pass = [SETTINGS text:TextForEmailPass];
    }
    
    msg.wantsSecure = YES; // smtp.gmail.com doesn't work without TLS!
    
    msg.subject = [[SETTINGS text:TextForEmailTitle] stringByAppendingString:number];
    NSString *msgText = [msg.subject stringByAppendingFormat:@" от %@ на %@", orderer, dateOn];
    
    // Only do this for self-signed certs!
    // msg.validateSSLChain = NO;
    msg.delegate = delegate;
    
    NSDictionary *plainPart = [NSDictionary dictionaryWithObjectsAndKeys:@"text/plain", kSKPSMTPPartContentTypeKey,
                                                                       msgText, kSKPSMTPPartMessageKey,
                                                                       @"8bit", kSKPSMTPPartContentTransferEncodingKey,
                                                                       nil];
    
    NSString *filename = [NSString stringWithFormat:[SETTINGS text:TextForPdfFilenameFormat], number];
    NSData *orderData = [NSData dataWithContentsOfFile:filepath];
    NSDictionary *vcfPart = [NSDictionary dictionaryWithObjectsAndKeys:
                             [NSString stringWithFormat:@"text/directory;\r\n\tx-unix-mode=0644;\r\n\tname=\"%@\"", filename], kSKPSMTPPartContentTypeKey,
                                 [NSString stringWithFormat:@"attachment;\r\n\tfilename=\"%@\"", filename], kSKPSMTPPartContentDispositionKey,
                                 [orderData encodeBase64ForData], kSKPSMTPPartMessageKey,
                                 @"base64", kSKPSMTPPartContentTransferEncodingKey,
                                 nil];
    
    msg.parts = [NSArray arrayWithObjects:plainPart,vcfPart,nil];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [msg send];
    });
    
    return msg;
}

@end
