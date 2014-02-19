//
//  NSObject+SOXDictPackager.m
//  Dict Package Sample
//
//  Created by Daniele Spagnolo on 19/02/2014.
//  Copyright (c) 2014 SpagOSX. All rights reserved.
//

#import "NSObject+SOXDictRepresentation.h"
#import <objc/runtime.h>

@implementation NSObject (SOXDictRepresentation)

- (NSDictionary *)dicionaryRepresentation {
    NSDictionary *representation = [self dictionaryWithValuesForKeys:[self propertyNames]];
    return representation;
}

- (NSArray *)propertyNames {
    
    NSMutableSet *propertiesNames = [NSMutableSet set];

    NSUInteger outCount;

    objc_property_t *properties = class_copyPropertyList([[self class] class], &outCount);
    
    for (NSUInteger i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        
        [propertiesNames addObject:propertyName];
    }
    
    NSArray *values = [NSArray arrayWithArray:[propertiesNames allObjects]];
    
    free(properties);
    
    return values;
}

@end
