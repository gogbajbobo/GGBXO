//
//  GGBXOPlayer.m
//  GGBXO
//
//  Created by Maxim Grigoriev on 01/06/2017.
//  Copyright © 2017 Maxim Grigoriev. All rights reserved.
//

#import "GGBXOPlayer.h"

@implementation GGBXOPlayer

@synthesize playerId = _playerId;
@synthesize position = _position;
@synthesize name = _name;
@synthesize isBot = _isBot;


#pragma mark - GGBPlayer protocol

+ (instancetype)playerWithName:(NSString *)name playerId:(NSUUID *)playerId {
    
    GGBXOPlayer *player = [[GGBXOPlayer alloc] init];
    player.name = name;
    player.playerId = playerId;
    
    return player;
    
}

- (void)haveToMakeMove {
    
}


@end
