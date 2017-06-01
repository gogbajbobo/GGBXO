//
//  GGBXOGame.m
//  GGBXO
//
//  Created by Maxim Grigoriev on 01/06/2017.
//  Copyright © 2017 Maxim Grigoriev. All rights reserved.
//

#import "GGBXOGame.h"

@implementation GGBXOGame

@synthesize players = _players;
@synthesize currentPlayer = _currentPlayer;
@synthesize gameHistory = _gameHistory;


#pragma mark - GGBGame protocol

+ (instancetype)gameWithPlayers:(NSArray<id<GGBPlayer>> *)players {
    
    GGBXOGame *game = [[GGBXOGame alloc] init];
    game.players = players;
    
    return game;
    
}

- (BOOL)newMove:(id<GGBMove>)gameMove {
    return YES;
}


@end
