//
//  AABallView.m
//  Bouncing
//
//  Created by Jordan Ng on 3/10/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import "AABallView.h"

@interface AABallView ()



@end

@implementation AABallView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor magentaColor];
    }
    return self;
}

- (void)move
{
    
    CGVector vel = self.velocity;
    
    // Bounce of the left and right sides:
    CGFloat width = CGRectGetWidth(self.superview.bounds);
    if (CGRectGetMaxX(self.frame) >= width) {
        vel.dx = -ABS(vel.dx);
    } else if (CGRectGetMinX(self.frame) <= 0) {
        vel.dx = ABS(vel.dx);
    }
    
    // Bounce off the bottom and top:
    CGFloat height = CGRectGetHeight(self.superview.bounds);
    if (CGRectGetMaxY(self.frame) >= height) {
        vel.dy = -ABS(vel.dy);
    } else if (CGRectGetMinY(self.frame) <= 0) {
        vel.dy = ABS(vel.dy);
    }
    self.velocity = vel;
    
    CGPoint loc = self.center;
    loc.x += self.velocity.dx;
    loc.y +=self.velocity.dy;
    self.center = loc;
    
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
