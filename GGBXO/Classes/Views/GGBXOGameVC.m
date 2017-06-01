//
//  GGBXOGameVC.m
//  GGBXO
//
//  Created by Maxim Grigoriev on 01/06/2017.
//  Copyright © 2017 Maxim Grigoriev. All rights reserved.
//

#import "GGBXOGameVC.h"

@interface GGBXOGameVC ()

@end

@implementation GGBXOGameVC


- (void)drawGameField {
    
    UIImage *image = [UIImage imageNamed:@"XO.png"];
    
    CGFloat paddingX = image.size.width / 4;
    CGFloat paddingY = image.size.height / 4;
    NSUInteger fieldHeight = 3;
    NSUInteger fieldWidth = 3;
    
    for (NSUInteger i = 0; i < fieldWidth; i++) {

        for (NSUInteger j = 0; j < fieldHeight; j++) {
            
            UIImageView *view = [[UIImageView alloc]  initWithImage:image];
            view.center = self.view.center;
            
            [self.view addSubview:view];
            
        }

    }
    
}


#pragma mark - view lifecycle

- (void)customInit {
    
    self.title = self.playVsAI ? @"playVsAI" : @"playVsHuman";
    [self drawGameField];
    
}

- (void)viewDidLoad {

    [super viewDidLoad];
    [self customInit];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
