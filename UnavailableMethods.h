//
//  NMBaseCell.h
//  Nemo
//
//  Created by Bogdan Stasjuk on 10/28/13.
//  Copyright (c) 2013 BestApp Studio. All rights reserved.
//

@interface SomeClass

#pragma mark - Unavailable methods

- (id)init __attribute__((unavailable("init not available")));
- (id)initWithCoder:(NSCoder *)aDecoder __attribute__((unavailable("initWithCoder: not available")));
- (id)initWithFrame:(CGRect)frame __attribute__((unavailable("initWithFrame: not available")));

@end
