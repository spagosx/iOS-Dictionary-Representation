//
//  SOXViewController.m
//  Dict Package Sample
//
//  Created by Daniele Spagnolo on 19/02/2014.
//  Copyright (c) 2014 SpagOSX. All rights reserved.
//

#import "SOXViewController.h"
#import "SOXSampleModel.h"
#import "NSObject+SOXDictRepresentation.h"
@interface SOXViewController ()

@end

@implementation SOXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logDictRepresentation:(id)sender {
    SOXSampleModel *sample = [SOXSampleModel samplePerson];
    NSDictionary *representation = [sample dicionaryRepresentation];
    NSLog(@"representation = %@", representation);
}

@end
