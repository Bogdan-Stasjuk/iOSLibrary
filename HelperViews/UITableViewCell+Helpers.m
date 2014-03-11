//
//  UITableViewCellEx.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/17/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "UITableViewCell+Helpers.h"

@implementation UITableViewCell (Helpers)


#pragma mark - Public methods

- (void)setupBgImg:(UIImage *)bgImg {
    
    UIImageView *cellImgView = [[UIImageView alloc] initWithImage:bgImg];
    
    self.backgroundView = cellImgView;
    self.backgroundView.backgroundColor = [Settings color:ColorForViewsBgDebug];
}

- (void)setupSelectedBgImg:(UIImage *)selectedBgImg {

    UIImageView *cellSelectedImgView = [[UIImageView alloc] initWithImage:selectedBgImg];
    
    self.selectedBackgroundView = cellSelectedImgView;
    self.selectedBackgroundView.backgroundColor = [Settings color:ColorForViewsBgDebug];
}

@end
