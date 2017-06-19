//
//  BeginButton.m
//  DOW2
//
//  Created by lyg on 6/26/14.
//  Copyright (c) 2014 lyg.tinos. All rights reserved.
//

#import "BeginButton.h"

@interface BeginButton()
{
}

-(void)setImage;
@end


@implementation BeginButton
UIImageView *imageview;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        [self setFrame:CGRectMake(300, 100, 100, 50)];//x ,y (x1,y1)
        //定义按钮标题
        // [self setTitle:@"Button Title" forState:UIControlStateNormal];
        
        //定义按钮标题字体格式
        // [self.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
        
    
        [self setBackgroundImage:[[UIImage imageNamed:@"start.jpeg"]stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
        self.adjustsImageWhenHighlighted = YES;
        
        
    }
    return self;
}






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
