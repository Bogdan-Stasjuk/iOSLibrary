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


#pragma mark - disable 'comparison of address of pointer' warning

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wtautological-pointer-compare"
    if (&pointer == NULL) {
    
    }
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


#pragma mark - Public methods
#pragma mark -Abstract

- (void)abstractMethod {
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (NSString *)abstractMethodWithReturnValue {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)] userInfo:nil];
}
