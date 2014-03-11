//
//  UINavigationControllerEx.m
//  Причал№1
//
//  Created by Stasjuk Bogdan on 10/7/13.
//  Copyright (c) 2013 Menzulski. All rights reserved.
//

#import "UINavigationControllerEx.h"
#import "UIButton+Helpers.h"

@interface UINavigationControllerEx () <UINavigationControllerDelegate>

@end

@implementation UINavigationControllerEx

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.delegate = self;
    
//    UIImage *imgBtn = [Settings image:ImageForNavBarBtnInfo];
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0.f, 0.f, imgBtn.size.width, imgBtn.size.height)
//                                         andNormalImg:imgBtn
//                                        andPressedImg:[Settings image:ImageForNavBarBtnInfoS]
//                                    andActionSelector:@selector(btnInfoPressed)
//                                            forTarget:self];
//    UIBarButtonItem *btnItemInfo = [[UIBarButtonItem alloc] init];
//    [btnItemInfo setCustomView:btn];
//    
//    UINavigationItem *navItem =  self.navigationItem;
//    navItem.rightBarButtonItem = btnItemInfo;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 

//- (void)navigationController:(UINavigationController *)navigationController
//      willShowViewController:(UIViewController *)viewController
//                    animated:(BOOL)animated
//{
//    UIImage *imgBtn = [Settings image:ImageForNavBarBtnInfo];
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0.f, 0.f, imgBtn.size.width, imgBtn.size.height)
//                                         andNormalImg:imgBtn
//                                        andPressedImg:[Settings image:ImageForNavBarBtnInfoS]
//                                    andActionSelector:@selector(btnInfoPressed)
//                                            forTarget:self];
//    UIBarButtonItem *btnItemInfo = [[UIBarButtonItem alloc] init];
//    [btnItemInfo setCustomView:btn];
//    
//    UINavigationItem *navItem =  navigationController.navigationItem;
//    navItem.rightBarButtonItem = btnItemInfo;
//}

//- (void)navigationController:(UINavigationController *)navigationController
//       didShowViewController:(UIViewController *)viewController
//                    animated:(BOOL)animated
//{
//    UIImage *imgBtn = [Settings image:ImageForNavBarBtnInfo];
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0.f, 0.f, imgBtn.size.width, imgBtn.size.height)
//                                         andNormalImg:imgBtn
//                                        andPressedImg:[Settings image:ImageForNavBarBtnInfoS]
//                                    andActionSelector:@selector(btnInfoPressed)
//                                            forTarget:self];
//    UIBarButtonItem *btnItemInfo = [[UIBarButtonItem alloc] init];
//    [btnItemInfo setCustomView:btn];
//    
//    UINavigationItem *navItem =  navigationController.navigationItem;
//    navItem.rightBarButtonItem = btnItemInfo;
//    
//}

@end
