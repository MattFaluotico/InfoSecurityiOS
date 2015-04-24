//
//  NotifyViewController.m
//  StrangerDanger
//
//  Created by Matthew Faluotico on 4/11/15.
//  Copyright (c) 2015 MF. All rights reserved.
//

#import "NotifyViewController.h"
#import <MessageUI/MessageUI.h>
#import "AFDropdownNotification.h"

@interface NotifyViewController () <MFMessageComposeViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *notifyButton;

@end

@implementation NotifyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.notifyButton.backgroundColor = [UIColor redColor];
    self.notifyButton.layer.cornerRadius = self.notifyButton.frame.size.width / 2;
    [self.notifyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [self.notifyButton addTarget:self action:@selector(sendMessage) forControlEvents:UIControlEventTouchUpInside];
    
    self.title = @"Notify";
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) sendMessage {
    
    if (![MFMessageComposeViewController canSendText]) {
        
        NSLog(@"NOPE!");
        
        AFDropdownNotification *notify = [[AFDropdownNotification alloc] init];
        notify.titleText = @"Your phone can't sent texts!";
        notify.subtitleText = @"...";
        [notify presentInView:self.view withGravityAnimation:NO];
        [self performSelector:@selector(notifyBye:) withObject:notify afterDelay:2];
        return;
    }
    
    MFMessageComposeViewController *textController = [[MFMessageComposeViewController alloc] init];
    
    NSUserDefaults *saves = [NSUserDefaults standardUserDefaults];

    NSMutableArray *recipiants = [NSMutableArray new];
    
    NSString *phone1 = [saves objectForKey: @"phone_one"];
        if (phone1) { [recipiants addObject:phone1]; }
    NSString *phone2 = [saves objectForKey: @"phone_two"];
        if (phone2) { [recipiants addObject:phone2]; }
    NSString *phone3 = [saves objectForKey: @"phone_three"];
        if (phone3) { [recipiants addObject:phone3]; }
    NSString *phone4 = [saves objectForKey: @"phone_four"];
        if (phone4) { [recipiants addObject:phone4]; }
    NSString *phone5 = [saves objectForKey: @"phone_five"];
        if (phone5) { [recipiants addObject:phone5]; }
    
    
    textController.recipients = recipiants;
    textController.body = @"Help! I am not safe right now\nPlease call or send help.\n-Sent via StrangeDanger for iOS";
    textController.messageComposeDelegate = self;
    
    [self presentViewController:textController animated:YES completion:nil];
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
    switch (result) {
        case MessageComposeResultCancelled:
            NSLog(@"Cancelled");
            break;
        case MessageComposeResultFailed:
            break;
        case MessageComposeResultSent: {
            AFDropdownNotification *notify = [[AFDropdownNotification alloc] init];
            notify.titleText = @"Your message has been sent";
            notify.subtitleText = @"You sould sound the alarm";
            [notify presentInView:self.view withGravityAnimation:NO];
            [self performSelector:@selector(notifyBye:) withObject:notify afterDelay:2];
            break;
        }
        default:
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) notifyBye: (AFDropdownNotification*) notify {
    [notify dismissWithGravityAnimation:YES];
}

@end
