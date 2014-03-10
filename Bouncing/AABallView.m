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
    
//    CGPoint vel = self.velocity;
//    
//    // Bounce of the left and right sides:
//    CGFloat width = CGRectGetWidth(self.view.bounds);
//    if (CGRectGetMaxX(self.ballView.frame) >= width) {
//        vel.x = -ABS(vel.x);
//    } else if (CGRectGetMinX(self.ballView.frame) <= 0) {
//        vel.x = ABS(vel.x);
//    }
//    
//    // Bounce off the bottom and top:
//    CGFloat height = CGRectGetHeight(self.view.bounds);
//    if (CGRectGetMaxY(self.ballView.frame) >= height) {
//        vel.y = -ABS(vel.y);
//    } else if (CGRectGetMinY(self.ballView.frame) <= 0) {
//        vel.y = ABS(vel.y);
//    }
//    self.velocity = vel;
//    
//    CGPoint pos = CGPointMake(self.ballXConstraint.constant,
//                              self.ballYConstraint.constant);
//    self.ballXConstraint.constant = pos.x + self.velocity.x;
//    self.ballYConstraint.constant = pos.y + self.velocity.y;
    
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
