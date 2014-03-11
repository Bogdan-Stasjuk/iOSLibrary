//
//  UITableViewCellEx.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/17/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "UITableViewCellEx.h"

@implementation UITableViewCellEx

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

}


- (void)setupBgImg:(UIImage *)bgImg {
    UIImageView *cellImgView = [[UIImageView alloc] initWithImage:bgImg];
    //cellImgView.image = bgImg;
    
    self.backgroundView = cellImgView;
    self.backgroundColor = [SETTINGS color:ColorForViews];
    
    //NSLog(@"%@", NSStringFromCGRect(self.backgroundView.frame));
}

- (void)setupSelectedBgImg:(UIImage *)selectedBgImg {
    UIImageView *cellSelectedImgView = [[UIImageView alloc] initWithImage:selectedBgImg];
    //cellSelectedImgView.image = selectedBgImg;
    
    self.selectedBackgroundView = cellSelectedImgView;
    self.backgroundColor = [SETTINGS color:ColorForViews];
    
    //NSLog(@"%@", NSStringFromCGRect(self.selectedBackgroundView.frame));
}

@end
