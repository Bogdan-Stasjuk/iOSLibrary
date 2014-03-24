//  Created by Bogdan Stasjuk
//

#pragma mark - disable 'undeclared selector' warning

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
        [self performSelector:@selector(undeclaredSelector)];
#pragma clang diagnostic pop


#pragma mark - set method as depricated

- (void)someMethod __attribute__((deprecated));
