//
//  NMBaseCell.h
//  Nemo
//
//  Created by Bogdan Stasjuk on 10/28/13.
//  Copyright (c) 2013 BestApp Studio. All rights reserved.
//

@interface SomeClass

// disable 'undeclared selector' warning
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
        [self performSelector:@selector(undeclaredSelector)];
#pragma clang diagnostic pop

@end
