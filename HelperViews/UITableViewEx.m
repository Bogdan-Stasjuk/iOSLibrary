//
//  UITableViewEx.m
//  RestaurantMenu
//
//  Created by Stasjuk Bogdan on 9/18/13.
//  Copyright (c) 2013 Slava. All rights reserved.
//

#import "UITableViewEx.h"

@interface UITableViewEx() {
    
}

@property(nonatomic, assign) NSUInteger numberOfSections;

@end

@implementation UITableViewEx


#pragma mark - UIView methods

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


#pragma mark - Abstract properties

- (NSUInteger)numberOfSections {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}


#pragma mark - Abstract methods

- (CGFloat)heightForRow:(NSUInteger)row {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

- (UITableViewCell *)cellForRow:(NSUInteger)row {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

- (void)didSelectRow:(NSUInteger)row {
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}


#pragma mark - Public methods

- (void)setupSeparator:(UITableViewCellSeparatorStyle)cellSaparatorStyle
             withColor:(UIColor *)color {
    [self setSeparatorStyle:cellSaparatorStyle];
    [self setSeparatorColor:color];
}


#pragma mark - Handlers

-(void) refreshInvoked:(id)sender forState:(UIControlState)state {
    
}


#pragma mark - Private methods

- (void)setupRefreshControl {
    
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    [refreshControl addTarget:self
                       action:@selector(refreshInvoked:forState:)
             forControlEvents:UIControlEventValueChanged];
    
    [self addSubview:refreshControl];
}

@end
