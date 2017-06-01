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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if (![segue.destinationViewController isKindOfClass:[GGBXOGameVC class]]) return;
    
    GGBXOGameVC *gameVC = (GGBXOGameVC *)segue.destinationViewController;
    gameVC.playVsAI = [segue.identifier isEqualToString:@"playVsAI"];
    
}


@end
