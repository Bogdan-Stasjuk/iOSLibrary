//
//  UITableViewControllerEx.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/16/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "UITableViewControllerEx.h"

@interface UITableViewControllerEx ()

@end

@implementation UITableViewControllerEx


#pragma mark -UITableViewController methods

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}


#pragma mark -Public methods

- (void)setupBgImg:(UIImage *)bgImg
         withFrame:(CGRect)frame
            OnCell:(UITableViewCell *)cell {
    UIImageView *cellImgView = [[UIImageView alloc] initWithFrame:frame];
    cellImgView.image = bgImg;
    cellImgView.backgroundColor = [UIColor clearColor];
    
    cell.backgroundView = cellImgView;
}

- (void)setupSeparator:(UITableViewCellSeparatorStyle)cellSaparatorStyle
             withColor:(UIColor *)color {
    [self.tableView setSeparatorStyle:cellSaparatorStyle];
    [self.tableView setSeparatorColor:color];
}

@end
