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
MyClass *instance = [MyClass alloc] initWithSomeAwesomeValue:value ...
NSDictionary *representation = [instance dictionaryRepresentation];
