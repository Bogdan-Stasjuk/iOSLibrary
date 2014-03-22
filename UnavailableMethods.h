//  Created by Bogdan Stasjuk
//

@interface SomeClass

#pragma mark - Unavailable methods

#pragma mark -UIViewController

- (id)init __attribute__((unavailable("init not available")));
- (id)initWithCoder:(NSCoder *)aDecoder __attribute__((unavailable("initWithCoder: not available")));
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil __attribute__((unavailable("initWithNibName:bundle: not available")));

#pragma mark -UIView

- (id)initWithFrame:(CGRect)frame __attribute__((unavailable("initWithFrame: not available")));

@end
