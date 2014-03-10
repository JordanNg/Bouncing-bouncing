//
//  AABallView.h
//  Bouncing
//
//  Created by Jordan Ng on 3/10/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AABallView : UIView

@property (assign, nonatomic) CGVector velocity;
- (void)move;

@end
