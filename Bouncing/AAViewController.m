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

@property (strong, nonatomic) AABallView *ballView;
@property (strong, nonatomic) CADisplayLink *displayLink;

@property (assign, nonatomic) CGPoint velocity;
@end

@implementation AAViewController

- (void)tick:(CADisplayLink *)sender
{
    [self.ballView move];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.ballView = [[AABallView alloc] initWithFrame:CGRectMake(500.0, 500.0, 25.0, 25.0)];
    
    self.ballView.velocity = CGVectorMake(10.0, 10.0);
    
    [self.view addSubview:self.ballView];
    
    self.velocity = CGPointMake(10.0, 10.0);
    
    self.displayLink = [CADisplayLink displayLinkWithTarget:self
                                                   selector:@selector(tick:)];
    
    [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop]
                           forMode:NSDefaultRunLoopMode];
}

@end
