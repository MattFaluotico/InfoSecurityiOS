//
//  SirenViewController.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/11/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "SirenViewController.h"

@interface SirenViewController ()
@property BOOL sirenPlaying;
@end

@implementation SirenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) sirenButton {
    
    if (self.sirenPlaying) {
        self.sirenPlaying = NO;
        
        // END SOUND
        
    } else {
        self.sirenPlaying = YES;
        
        // PLAY SOUND
    }
}

@end
