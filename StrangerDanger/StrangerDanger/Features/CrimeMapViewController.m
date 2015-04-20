//
//  CrimeMapViewController.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/11/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "CrimeMapViewController.h"
#import "AFNetworking.h"

@interface CrimeMapViewController ()

@end

@implementation CrimeMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Crime Map";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)boing:(id)sender {
    [self getLocation];
}

- (void) getLocation {
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    self.userLocation = self.mapView.userLocation;
    CGFloat lat = self.userLocation.coordinate.latitude;
    CGFloat lon = self.userLocation.coordinate.longitude;
    
    NSString *URL = [NSString stringWithFormat:@"http://api.spotcrime.com/crimes.json?lat=%f&lon=%f&radius=0.020&callback=&key=MLC-restricted-key", lat, lon];
    
    NSLog(URL);
    
    [manager GET:URL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSArray *crimes = responseObject[@"crimes"];
        
        if (crimes) {
            
            for (NSDictionary *crime in crimes) {
                
                NSNumber *crimeLat = crime[@"lat"];
                NSNumber *crimeLon = crime[@"lon"];
                
                CLLocationCoordinate2D coor = CLLocationCoordinate2DMake([crimeLat doubleValue], [crimeLon doubleValue]);
                MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:coor addressDictionary:nil];
                [self placePoint:placemark];
            }
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
