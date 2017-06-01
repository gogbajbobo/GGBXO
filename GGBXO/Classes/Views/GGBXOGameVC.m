//
//  GGBXOGameVC.m
//  GGBXO
//
//  Created by Maxim Grigoriev on 01/06/2017.
//  Copyright © 2017 Maxim Grigoriev. All rights reserved.
//

#import "GGBXOGameVC.h"

@interface GGBXOGameVC ()

@property (nonatomic, strong) NSMutableArray <NSValue *> *fieldViews;


@end


@implementation GGBXOGameVC

- (NSMutableArray *)fieldViews {
    
    if (!_fieldViews) {
        _fieldViews = @[].mutableCopy;
    }
    return _fieldViews;
    
}

- (void)tapOnView:(UITapGestureRecognizer *)tap {

    CGPoint field = self.fieldViews[tap.view.tag].CGPointValue;
    
    NSLog(@"field %@ %@", @(field.x), @(field.y));
    
}

- (void)drawGameField {
    
    UIImage *image = [UIImage imageNamed:@"XO.png"];
    
    CGFloat imageW = image.size.width;
    CGFloat imageH = image.size.height;
    
    CGFloat paddingX = image.size.width / 4;
    CGFloat paddingY = image.size.height / 4;
    NSUInteger fieldXCount = 3;
    NSUInteger fieldYCount = 3;
    
    CGFloat fieldWidth = imageW * fieldXCount + paddingX * (fieldXCount - 1);
    CGFloat fieldHeight = imageH * fieldYCount + paddingY * (fieldYCount - 1);
    
    NSInteger tag = 0;
    
    for (NSUInteger i = 0; i < fieldXCount; i++) {

        CGFloat x = (imageW + paddingX) * i;

        for (NSUInteger j = 0; j < fieldYCount; j++) {

            CGFloat y = (imageH + paddingY) * j;

            CGFloat viewX = self.view.center.x + x - (fieldWidth - imageW) / 2;
            CGFloat viewY = self.view.center.y + y - (fieldHeight - imageH) / 2;
            
            CGPoint center = CGPointMake(viewX, viewY);
            
            NSValue *value = [NSValue valueWithCGPoint:CGPointMake(i, j)];
            self.fieldViews[tag] = value;

            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(tapOnView:)];
            
            UIImageView *view = [[UIImageView alloc]  initWithImage:image];
            view.center = center;
            view.tag = tag++;
            view.userInteractionEnabled = YES;
            [view addGestureRecognizer:tap];
            
            [self.view addSubview:view];
            
        }

    }
    
}


#pragma mark - view lifecycle

- (void)customInit {
    
    self.title = self.playVsBot ? @"playVsBot" : @"playVsHuman";
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
