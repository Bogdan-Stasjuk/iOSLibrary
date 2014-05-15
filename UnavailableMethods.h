//  Created by Bogdan Stasjuk
//

@interface SomeClass

#pragma mark - Unavailable methods

#pragma mark -NSObject

+ (id)new __attribute__((unavailable));

#pragma mark -UIView

- (id)init __attribute__((unavailable));
- (id)initWithCoder:(NSCoder *)aDecoder __attribute__((unavailable));
- (id)initWithFrame:(CGRect)frame __attribute__((unavailable));

#pragma mark -UIViewController

- (id)init __attribute__((unavailable));
- (id)initWithCoder:(NSCoder *)aDecoder __attribute__((unavailable));
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil __attribute__((unavailable));

@end
