iOS-Dictionary-Representation
=============================

A NSObject Category to build a NSDictionary from a Class structure. 
The returned NSDictionary object will have a key/value pair for each property in the Class interface, where key is the property name and value is the property value assigned to the receiving instance.

How to use:
-----------------------------

- Import NSObject+SOXDictRepresentation;
- Send dictionaryRepresentation message to any instance of any of your classes; 
- Use the returned NSDictionary

e.g.
```
MyClass *instance = [MyClass alloc] initWithSomeAwesomeValue:value ...
NSDictionary *representation = [instance dictionaryRepresentation];
```

In the Sample Project you will find a SOXSampleModel class which reflect a sample structure for a Person class.

It has interface:
```
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
```

Initialised this way:
```
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
```

Simple as that, with the following lines:
```
    SOXSampleModel *sample = [SOXSampleModel samplePerson];
    NSDictionary *representation = [sample dicionaryRepresentation];
    NSLog(@"representation = %@", representation);
```

We get the following NSDictionary logged into console:
```
representation = {
    address = "1 The Street, Anytown, Nicecounty, XY3 ZA2, UK";
    age = 42;
    firstName = John;
    hasChildren = 1;
    height = "5.8";
    secondName = Arthur;
    surname = Smith;
    telephone = "+44 123 456 789";
    weight = 165;
}
```

WIP:
I should try to do something to make it some recursive
