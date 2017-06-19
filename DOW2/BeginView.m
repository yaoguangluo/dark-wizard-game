//
//  BeginView.m
//  DOW2
//
//  Created by lyg on 6/25/14.
//  Copyright (c) 2014 lyg.tinos. All rights reserved.
//

#import "BeginView.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "BeginButton.h"

@implementation BeginView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
          UIImage *image = [UIImage imageNamed:@"core.jpg"];
          UIImageView *imageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 520,340)];
          [imageview setImage:image];
          [imageview setContentScaleFactor:[[UIScreen mainScreen] scale]];
           imageview .contentMode= UIViewContentModeScaleAspectFill;
           imageview.autoresizingMask=UIViewAutoresizingFlexibleHeight;
           imageview.clipsToBounds=YES;
           [self addSubview:imageview];
        
           //start button
           BeginButton *beginButton = [BeginButton buttonWithType:UIButtonTypeRoundedRect];
           [beginButton addTarget:self action:@selector(BeginButtonEvents)forControlEvents:UIControlEventTouchUpInside];
        
           [self addSubview:beginButton];
        
        
                          
    }
    return self;
}
-(void)BeginButtonEvents
{
    

}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect{}


@end
