//  Created by Bogdan Stasjuk
//

@interface SomeClass

#pragma mark - Unavailable methods

#pragma mark -NSObject

+ (instancetype)new __attribute__((unavailable));
- (instancetype)init __attribute__((unavailable));

#pragma mark -UIView

- (instancetype)initWithCoder:(NSCoder *)aDecoder __attribute__((unavailable));
- (instancetype)initWithFrame:(CGRect)frame __attribute__((unavailable));

#pragma mark -UIViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder __attribute__((unavailable));
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil __attribute__((unavailable));

#pragma mark -UITableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style __attribute__((unavailable));

#pragma mark -UIPopoverController

- (instancetype)initWithContentViewController:(UIViewController *)viewController __attribute__((unavailable));

@end
