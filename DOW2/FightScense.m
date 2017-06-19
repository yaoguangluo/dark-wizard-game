//
//  FightScense.m
//  DOW2
//
//  Created by lyg on 6/25/14.
//  Copyright (c) 2014 lyg.tinos. All rights reserved.
//

#import "FightScense.h"

@implementation FightScense

-(id)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size])
    {
        NSLog(@"Size: %@", NSStringFromCGSize(size));
        self.backgroundColor = [SKColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        SKSpriteNode *player = [SKSpriteNode spriteNodeWithImageNamed:@"grass.jpg"];
        player.position = CGPointMake(self.size.width/2, self.size.height/2);
        CGSize firstSize = CGSizeMake(self.size.width,self.size.height);
        player.size=firstSize;
        [self addChild:player];
    }
    return self;
}


@end
