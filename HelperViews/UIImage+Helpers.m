//
//  UIImage+Helpers.m
//  Причал№1
//
//  Created by Stasjuk Bogdan on 10/8/13.
//  Copyright (c) 2013 Menzulski. All rights reserved.
//

@implementation UIImage (Helpers)

+ (UIImage*)imageWithImage:(UIImage*)image
              scaledToSize:(CGSize)newSize
{
    UIGraphicsBeginImageContext( newSize );
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end
