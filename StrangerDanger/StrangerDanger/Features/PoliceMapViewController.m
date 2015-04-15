//
//  PoliceMapViewController.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/11/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "PoliceMapViewController.h"

@interface PoliceMapViewController ()

@end

@implementation PoliceMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Police Map";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) getLocation {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"PoliceLocations" ofType:@"json"];
    NSError *deserializingError;
    NSURL *localFileURL = [NSURL fileURLWithPath:path];
    
    NSData *contentOfLocalFile = [NSData dataWithContentsOfURL:localFileURL];
    
    NSArray * objects = [NSJSONSerialization JSONObjectWithData:contentOfLocalFile options:NSJSONWritingPrettyPrinted error:&deserializingError];
    
    for (NSDictionary *json in objects) {
        NSNumber *lat = json[@"lat"];
        NSNumber *lon = json[@"long"];
        NSString *name = json[@"name"];
        
        CLLocationCoordinate2D coor = CLLocationCoordinate2DMake([lat doubleValue], [lon doubleValue]);
        MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:coor addressDictionary:nil];
        
        [self placePoint:placemark];
        
    }
}

@end
