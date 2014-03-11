//
//  UITableViewEx.h
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/18/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

@interface UITableViewEx : UITableView

// abstract properties
@property(nonatomic, assign, readonly) NSUInteger numberOfSections;

// abstract methods
- (CGFloat)heightForRow:(NSUInteger)row;
- (UITableViewCell *)cellForRow:(NSUInteger)row;
- (void)didSelectRow:(NSUInteger)row;

- (void)setupSeparator:(UITableViewCellSeparatorStyle)cellSaparatorStyle
             withColor:(UIColor *)color;

@end
