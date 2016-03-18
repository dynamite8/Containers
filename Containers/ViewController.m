//
//  ViewController.m
//  Containers
//
//  Created by Jenny Chang Ho on 3/18/16.
//  Copyright © 2016 GrubHub. All rights reserved.
//

#import "ViewController.h"
#import "ContainerViewController.h"

#define SegueIdentifierFirst @"kSegueShow1"
#define SegueIdentifierSecond @"kSegueShow2"

@interface ViewController ()

@property (weak, nonatomic) ContainerViewController *containerViewController;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *containerHeight;

@end

@implementation ViewController

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if ([segue.identifier isEqualToString:@"embedContainer"]) {
        self.containerViewController = segue.destinationViewController;
    }
}

- (IBAction)swapButtonPressed:(id)sender {
    
    [self.containerViewController swapViewControllers];
}

- (IBAction)showTest1ButtonPressed:(id)sender {
    
    
    self.containerHeight.constant = 100;
    [self.view layoutIfNeeded];
    
    [self.containerViewController showParticularScreen:SegueIdentifierFirst];
}

- (IBAction)showTest2ButtonPressed:(id)sender {
    
    self.containerHeight.constant = 300;
    [self.view layoutIfNeeded];
    
    [self.containerViewController showParticularScreen:SegueIdentifierSecond];
}

@end
