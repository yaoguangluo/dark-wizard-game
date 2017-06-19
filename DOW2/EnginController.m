//  EnginController.m
//  DOW2
//  Created by lyg on 6/25/14.
//  Copyright (c) 2014 lyg.tinos. All rights reserved.
#import "EnginController.h"
#import "BagView.h"
#import "BeginView.h"
#import <SpriteKit/SpriteKit.h>
@import AVFoundation;
@interface EnginController ()
{
    @public
        CGRect rect;
}
@property (nonatomic) AVAudioPlayer * backgroundMusicPlayer;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
-(void)viewDidLoad;
-(void)didReceiveMemoryWarning;
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
-(void)createScense;
-(void)createView;
-(void)createBackMusic;
-(void)setMomentScence;
-(void)checkScenseLoop;
-(void)loop;

@end
@implementation EnginController


@synthesize  skView;
@synthesize  beginView;
@synthesize  fightScense;
@synthesize  shopView;
@synthesize  bagView;
@synthesize  functionView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //main
        [self viewDidLoad];
        //end
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createView];
    [self createScense];
    [self createBackMusic];
    [self setMomentScence];
    [self checkScenseLoop];
    //end
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}
//
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{};
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{};
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{};
-(void)createScense
{
    fightScense = [FightScense sceneWithSize:skView.bounds.size];
    fightScense.scaleMode = SKSceneScaleModeAspectFill;
};
-(void)createBackMusic
{
    NSError *error;
    NSURL * backgroundMusicURL = [[NSBundle mainBundle] URLForResource:@"Game" withExtension:@"mp3"];
    self.backgroundMusicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:backgroundMusicURL error:&error];
    self.backgroundMusicPlayer.numberOfLoops = -1;
    [self.backgroundMusicPlayer prepareToPlay];
    [self.backgroundMusicPlayer play];
};
-(void)setMomentScence
{
    [skView presentScene:fightScense];
};
-(void)createView
{
    rect = CGRectMake(0, 0, 920,640);
    self.view= [[UIView alloc]initWithFrame:rect];
    [self.view setMultipleTouchEnabled:YES];
    
    skView = [[SKView alloc]initWithFrame:rect];
    skView.showsDrawCount = YES;
    skView.showsNodeCount = YES;
    skView.showsFPS = YES;
    [self.view addSubview:skView];
    skView.hidden=true;

    beginView = [[BeginView alloc]initWithFrame:rect];
    [self.view addSubview:beginView];
    beginView.hidden = false;
    
    shopView = [[ShopView alloc]initWithFrame:rect];
    [self.view addSubview:shopView];
    
    shopView.hidden = true;
    
    bagView = [[BagView alloc]initWithFrame:rect];
    [self.view addSubview:bagView];
    bagView.hidden = true;
    
    functionView = [[FunctionView alloc]initWithFrame:rect];
    [self.view addSubview:functionView];
    functionView.hidden = true;
    
    //[self.view bringSubviewToFront:beginView];
    
};
-(void)checkScenseLoop
{
    CADisplayLink* displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(loop)];
    [displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
};
-(void)loop
{
    
}
@end
