//
//  SDNav.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/13/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "SDNav.h"

@interface SDNav ()

@end

@implementation SDNav

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.barTintColor = [UIColor redColor];

    NSDictionary *titleAttributes = @{
                                      NSFontAttributeName : [UIFont systemFontOfSize:20],
                                      NSForegroundColorAttributeName : [UIColor whiteColor]
                                      };
    
    self.navigationBar.titleTextAttributes = titleAttributes;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
