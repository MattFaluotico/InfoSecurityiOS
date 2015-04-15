//
//  SirenViewController.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/11/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "SirenViewController.h"
#import "SoundManager.h"

@interface SirenViewController ()
@property BOOL sirenPlaying;
@property Sound *siren;
@property Sound *secondSound;
@property (weak, nonatomic) IBOutlet UIButton *sirenButton;
@end

@implementation SirenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Siren";
    
    NSString *pathSiren = [[NSBundle mainBundle] pathForResource:@"Siren" ofType:@"mp3"];
    NSString *pathSecond = [[NSBundle mainBundle] pathForResource:@"Leedle" ofType:@"mp3"];
    self.siren = [[Sound alloc] initWithContentsOfFile:pathSiren];
    self.secondSound = [[Sound alloc] initWithContentsOfFile:pathSecond];
    [self.secondSound setLooping:YES];
    
    [self.sirenButton setBackgroundImage:[UIImage imageNamed:@"Siren"] forState:UIControlStateNormal];
    self.sirenButton.clipsToBounds = YES;
    
    [self.sirenButton addTarget:self action:@selector(playSiren) forControlEvents:UIControlEventTouchUpInside];
    [self.sirenButton addTarget:self action:@selector(totallyNotAnEasterEgg) forControlEvents:UIControlEventTouchDragInside];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) playSiren {
    
    [self.secondSound stop];
    
    if (self.sirenPlaying) {
        self.sirenPlaying = NO;
        [self.siren stop];
        // END SOUND
        
    } else {
        self.sirenPlaying = YES;
        [self.siren play];
        // PLAY SOUND
    }
}

- (void) totallyNotAnEasterEgg {
    
    [self.secondSound stop];
    [self.siren stop];
    
    if (self.sirenPlaying) {
        self.sirenPlaying = NO;
        [self.siren stop];
        // END SOUND
        
    } else {
        self.sirenPlaying = YES;
        [self.siren stop];
        [self.secondSound play];
        // PLAY SOUND
    }
}

@end
