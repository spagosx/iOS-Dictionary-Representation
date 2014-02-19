//
//  NSObject+SOXDictPackager.h
//  Dict Package Sample
//
//  Created by Daniele Spagnolo on 19/02/2014.
//  Copyright (c) 2014 SpagOSX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (SOXDictRepresentation)

/**
 *
 * Get all the properties from the receiving object 
 * and package a NSDictionary object with a key/value pair
 * for every property declared in the receiving object interface
 * where the key is the property name and the value is the property value.
 *
 * @return A NSDictionary object with a key/value pair for every property declared in the receiving object class interface.
 *
 */
- (NSDictionary *)dicionaryRepresentation;

@end
