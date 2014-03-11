//
//  AAViewController.m
//  Bouncing
//
//  Created by Kyle Oba on 2/24/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import "AAViewController.h"
#import "AABallView.h"
@import QuartzCore;

@interface AAViewController ()

@property (strong, nonatomic) NSMutableArray *balls;
@property (strong, nonatomic) CADisplayLink *displayLink;

@property (assign, nonatomic) CGPoint velocity;
@end

@implementation AAViewController

- (void)tick:(CADisplayLink *)sender
{
    for (AABallView *ballView in self.balls) {
        [ballView move];
    }
   
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.balls = [NSMutableArray array];
    AABallView *ballView = [[AABallView alloc] initWithFrame:CGRectMake(500.0, 500.0, 25.0, 25.0)];
    
    ballView.velocity = CGVectorMake(10.0, 10.0);
    
    [self.view addSubview:ballView];
    
    [self.balls addObject:ballView];
    
    self.velocity = CGPointMake(10.0, 10.0);
    
    AABallView *ball2 = [[AABallView alloc] initWithFrame:CGRectMake(250.0, 250.0, 25.0, 25.0)];
    
    ball2.velocity = CGVectorMake(10.0, 10.0);
    
    [self.view addSubview:ball2];
    
    [self.balls addObject:ball2];
    
    self.velocity = CGPointMake(10.0, 10.0);

    
    self.displayLink = [CADisplayLink displayLinkWithTarget:self
                                                   selector:@selector(tick:)];
    
    [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop]
                           forMode:NSDefaultRunLoopMode];
}

@end
