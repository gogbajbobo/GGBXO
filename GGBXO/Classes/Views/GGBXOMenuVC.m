//
//  GGBXOMenuVC.m
//  GGBXO
//
//  Created by Maxim Grigoriev on 01/06/2017.
//  Copyright © 2017 Maxim Grigoriev. All rights reserved.
//

#import "GGBXOMenuVC.h"

#import "GGBXOGameVC.h"


@interface GGBXOMenuVC ()

@end

@implementation GGBXOMenuVC


#pragma mark - UIDebuggingInformationOverlay


- (void)showDebuggingInformationOverlay {

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"

    Class UIDebuggingInformationOverlay = NSClassFromString(@"UIDebuggingInformationOverlay");
    
    SEL prepareDebuggingOverlaySelector = NSSelectorFromString(@"prepareDebuggingOverlay");
    
    [UIDebuggingInformationOverlay performSelector:prepareDebuggingOverlaySelector];
    
    SEL overlaySelector = NSSelectorFromString(@"overlay");
    
    id overlay = [UIDebuggingInformationOverlay performSelector:overlaySelector];
    
    SEL toggleVisibilitySelector = NSSelectorFromString(@"toggleVisibility");
    
    [overlay performSelector:toggleVisibilitySelector];

#pragma clang diagnostic pop
    
}


#pragma mark - view lifecycle

- (void)customInit {
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:nil
                                                                  action:nil];
    
    self.navigationItem.backBarButtonItem = backButton;

    [self showDebuggingInformationOverlay];
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self customInit];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if (![segue.destinationViewController isKindOfClass:[GGBXOGameVC class]]) return;
    
    GGBXOGameVC *gameVC = (GGBXOGameVC *)segue.destinationViewController;
    gameVC.playVsBot = [segue.identifier isEqualToString:@"playVsBot"];
    
}


@end
