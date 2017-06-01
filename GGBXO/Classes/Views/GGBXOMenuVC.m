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


#pragma mark - view lifecycle

- (void)customInit {
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:nil
                                                                  action:nil];
    
    self.navigationItem.backBarButtonItem = backButton;

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
