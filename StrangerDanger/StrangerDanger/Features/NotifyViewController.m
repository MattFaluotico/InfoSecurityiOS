//
//  NotifyViewController.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/11/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "NotifyViewController.h"

@interface NotifyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *notifyButton;

@end

@implementation NotifyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.notifyButton.backgroundColor = [UIColor redColor];
    self.notifyButton.layer.cornerRadius = self.notifyButton.frame.size.width / 2;
    [self.notifyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
