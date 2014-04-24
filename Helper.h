//  Created by Bogdan Stasjuk
//

#pragma mark - disable 'undeclared selector' warning

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
        [self performSelector:@selector(undeclaredSelector)];
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self performSelector:@selector(undeclaredSelector)];
#pragma clang diagnostic pop


#pragma mark - set method as depricated

- (void)someMethod __attribute__((deprecated));


#pragma mark - Singleton

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[[self class] alloc] init];
    });
    return sharedInstance;
}
