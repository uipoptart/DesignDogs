//
//  Copyright (c) 2015 Osten Engineering. All rights reserved.
//

#import "NMOViewController.h"

static NSString * kCuteStoryBoard = @"Cute";
static NSString * kCuterStoryboard = @"Cuter";

@implementation NMOViewController

- (IBAction)tappedCuteButton:(id)sender
{
    [self _showStoryboardWithName:kCuteStoryBoard];
}

- (IBAction)tappedCuterButton:(id)sender
{
    [self _showStoryboardWithName:kCuterStoryboard];
}

- (void)_showStoryboardWithName:(NSString *)name
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:[NSBundle mainBundle]];
    id initialViewController = [storyboard instantiateInitialViewController];
    [self showViewController:initialViewController sender:nil];
}

@end
