//
//  EditViewController.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/11/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "EditViewController.h"
#import "EditForm.h"
#import "ContactFormViewController.h"
@interface EditViewController ()
@property ContactFormViewController *contact;
@end

@implementation EditViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    EditForm *editForm = [EditForm new];
    self.formController.form = editForm;
    
    self.contact = [ContactFormViewController new];
    
    self.title = @"Edit";
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) openContact1 {
    [self.contact setContact:@"one"];
    [self.navigationController pushViewController:self.contact animated:YES];
}

- (void) openContact2 {
    [self.contact setContact:@"two"];
    [self.navigationController pushViewController:self.contact animated:YES];
}

- (void) openContact3 {
    [self.contact setContact:@"three"];
     [self.navigationController pushViewController:self.contact animated:YES];
}

- (void) openContact4 {
    [self.contact setContact:@"four"];
    [self.navigationController pushViewController:self.contact animated:YES];
}

- (void) openContact5 {
    [self.contact setContact:@"five"];
    [self.navigationController pushViewController:self.contact animated:YES];
}

@end
