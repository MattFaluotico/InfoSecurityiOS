//
//  ICEForm.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/11/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "ICEForm.h"

@implementation ICEForm

- (NSArray *)fields {
    return @[
             @{FXFormFieldKey: @"name",
               FXFormFieldTitle : @"Name"},
             @{FXFormFieldKey: @"phone",
               FXFormFieldTitle : @"Phone Number"},
             @{FXFormFieldKey: @"email",
               FXFormFieldTitle : @"Email"},
             @{FXFormFieldKey: @"relation",
               FXFormFieldTitle : @"Relation"}
             ];
}

@end
