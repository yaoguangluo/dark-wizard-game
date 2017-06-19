//
//  EnginController.h
//  DOW2
//
//  Created by lyg on 6/25/14.
//  Copyright (c) 2014 lyg.tinos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import "FightScense.h"
#import "BeginView.h"
#import "ShopView.h"
#import "BagView.h"
#import "FunctionView.h"

@interface EnginController : UIViewController
{
    @public
    SKView *skView;
    FightScense *fightScense;
    BeginView *beginView;
    ShopView *shopView;
    BagView *bagView;
    FunctionView *functionView;
}

@property (nonatomic,retain)    SKView *skView;
@property (nonatomic,retain)    BeginView *beginView;
@property (nonatomic,retain)    ShopView *shopView;
@property (nonatomic,retain)    BagView *bagView;
@property (nonatomic,retain)    FunctionView *functionView;

@property (nonatomic,retain)    FightScense *fightScense;


@end
