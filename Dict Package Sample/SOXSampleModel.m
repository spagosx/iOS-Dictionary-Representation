//
//  SOXSampleModel.m
//  Dict Package Sample
//
//  Created by Daniele Spagnolo on 19/02/2014.
//  Copyright (c) 2014 SpagOSX. All rights reserved.
//

#import "SOXSampleModel.h"

@implementation SOXSampleModel

+ (id)samplePerson {
    return [[self alloc] init];
}

- (id)init {
    if (self = [super init]) {
        _firstName = @"John";
        _secondName = @"Arthur";
        _surname = @"Smith";
        _age = @42;
        _height = @5.80;
        _weight = @165;
        _telephone = @"+44 123 456 789";
        _address = @"1 The Street, Anytown, Nicecounty, XY3 ZA2, UK";
        _hasChildren = YES;
    }
    
    return self;
}

@end
