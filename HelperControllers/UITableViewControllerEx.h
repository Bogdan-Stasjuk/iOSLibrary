//
//  UITableViewControllerEx.h
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/16/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewControllerEx : UITableViewController

- (void)setupBgImg:(UIImage *)bgImg
         withFrame:(CGRect)frame
            OnCell:(UITableViewCell *)cell;
- (void)setupSeparator:(UITableViewCellSeparatorStyle)cellSaparatorStyle
             withColor:(UIColor *)color;

@end
