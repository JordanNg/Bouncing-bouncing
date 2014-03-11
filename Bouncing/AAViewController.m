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
    
    //Ball number 1
    AABallView *ballView = [[AABallView alloc] initWithFrame:CGRectMake(500.0, 500.0, 25.0, 25.0)];
    
    ballView.velocity = CGVectorMake(10.0, 10.0);
    
    [self.view addSubview:ballView];
    
    [self.balls addObject:ballView];
    
    self.velocity = CGPointMake(10.0, 10.0);
    
    //Ball number 2
    AABallView *ballViewTwo = [[AABallView alloc] initWithFrame:CGRectMake(250.0, 100.0, 25.0, 25.0)];
    
    ballViewTwo.velocity = CGVectorMake(10.0, 10.0);
    
    [self.view addSubview:ballViewTwo];
    
    [self.balls addObject:ballViewTwo];
    
    self.velocity = CGPointMake(10.0, 10.0);
    
    //Ball number 3
    AABallView *ballViewThree = [[AABallView alloc] initWithFrame:CGRectMake(250.0, 500.0, 25.0, 25.0)];
    
    ballViewThree.velocity = CGVectorMake(10.0, 10.0);
    
    [self.view addSubview:ballViewThree];
    
    [self.balls addObject:ballViewThree];
    
    self.velocity = CGPointMake(10.0, 10.0);


    
    self.displayLink = [CADisplayLink displayLinkWithTarget:self
                                                   selector:@selector(tick:)];
    
    [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop]
                           forMode:NSDefaultRunLoopMode];
}

@end
