//
//  Copyright (c) 2015 Osten Engineering. All rights reserved.
//

#import "NMOCuteViewController.h"

@implementation NMOCuteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
}

- (IBAction)dismiss:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
