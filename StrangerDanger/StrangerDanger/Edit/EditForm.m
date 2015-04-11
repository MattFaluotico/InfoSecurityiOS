//
//  EditForm.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/11/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "EditForm.h"

@implementation EditForm

- (NSArray *)fields {
    return @[
             @{FXFormFieldKey: @"contact1",
               FXFormFieldAction: @"openContact1",
               FXFormFieldHeader: @"Contacts",
               FXFormFieldTitle : @"Contact 1"},
             @{FXFormFieldKey: @"contact2",
               FXFormFieldAction: @"openContact2",
               FXFormFieldTitle : @"Contact 2"},
             @{FXFormFieldKey: @"contact3",
               FXFormFieldAction: @"openContact3",
               FXFormFieldTitle : @"Contact 3"},
             @{FXFormFieldKey: @"contact4",
               FXFormFieldAction: @"openContact4",
               FXFormFieldTitle : @"Contact 4"},
             @{FXFormFieldKey: @"contact5",
               FXFormFieldAction: @"openContact5",
               FXFormFieldTitle : @"Contact 5"}
             ];
}

@end
