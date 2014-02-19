//
//  SOXSampleModel.h
//  Dict Package Sample
//
//  Created by Daniele Spagnolo on 19/02/2014.
//  Copyright (c) 2014 SpagOSX. All rights reserved.
//

#import <Foundation/Foundation.h>

//
//
// This class is a sample model to show the functionality of the NSObject category
// For semplicity we assume this class rensamble a Person.
//
//

@interface SOXSampleModel : NSObject

@property (copy, nonatomic) NSString *firstName;
@property (copy, nonatomic) NSString *secondName;
@property (copy, nonatomic) NSString *surname;
@property (nonatomic) NSNumber *age;
@property (nonatomic) NSNumber *height; // will use in feet with decimal value
@property (nonatomic) NSNumber *weight; // in pounds
@property (copy, nonatomic) NSString *telephone; // americans don't use just numbers?
@property (nonatomic) NSString *address;

@property (assign, nonatomic) BOOL hasChildren;

/**
 * 
 * Return a SOXSampleModel object under the aspect of a person
 * with sample data as name, surname, age, address
 *
 * @return The newly intiialized SOXSamplePerson object.
 *
 */
+ (id)samplePerson;

@end
