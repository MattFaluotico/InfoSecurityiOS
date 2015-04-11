//
//  ContactFormViewController.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/11/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "ContactFormViewController.h"
#import "ICEForm.h"

@interface ContactFormViewController ()
@end

@implementation ContactFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ICEForm *form = [ICEForm new];
    self.formController.form = form;
    // Do any additional setup after loading the view.
    
}

- (void) viewWillDisappear:(BOOL)animated {
    [self save];
}

- (void) viewWillAppear:(BOOL)animated {
    [self populateFromContact];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) populateFromContact {
    
    NSLog(@"populating");
    
    NSString *kName = [NSString stringWithFormat:@"name_%@", self.contact];
    NSString *kPhone = [NSString stringWithFormat:@"phone_%@", self.contact];
    NSString *kEmail = [NSString stringWithFormat:@"email_%@", self.contact];
    NSString *kRelation = [NSString stringWithFormat:@"relation_%@", self.contact];
    
    ICEForm *form = self.formController.form;
    
    NSUserDefaults *settings = [NSUserDefaults standardUserDefaults];
    
    form.name = [settings objectForKey:kName];
    form.phone = [settings objectForKey:kPhone];
    form.email = [settings objectForKey:kEmail];
    form.relation = [settings objectForKey:kRelation];
    
    [self.tableView reloadData];
}

- (void) save {
    
    NSLog(@"saving");
    
    NSString *kName = [NSString stringWithFormat:@"name_%@", self.contact];
    NSString *kPhone = [NSString stringWithFormat:@"phone_%@", self.contact];
    NSString *kEmail = [NSString stringWithFormat:@"email_%@", self.contact];
    NSString *kRelation = [NSString stringWithFormat:@"relation_%@", self.contact];
    
    ICEForm *form = self.formController.form;
    
    NSUserDefaults *settings = [NSUserDefaults standardUserDefaults];
    
    [settings setObject:form.name forKey:kName];
    [settings setObject:form.phone forKey:kPhone];
    [settings setObject:form.email forKey:kEmail];
    [settings setObject:form.relation forKey:kRelation];
}

@end
