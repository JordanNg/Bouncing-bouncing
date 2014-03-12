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

- (AABallView *)customBallViewWithLocation:(CGPoint)location velocity:(CGVector)velocity size:(CGSize)size
{
    AABallView *ballView = [[AABallView alloc] initWithFrame:CGRectMake(500.0, 500.0, size.width, size.height)];
    
    ballView.center = location;
    
    ballView.velocity = velocity;
    
    return ballView;
}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor redColor];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.balls = [NSMutableArray array];
    
    //Balls that are being created:
    
    for (int i = 0; i < 1000; i ++) {
        
        //Ball Properties:
        CGPoint location = CGPointMake(arc4random()%1000, arc4random()%1000);
        CGVector velocity = CGVectorMake(arc4random()%10, arc4random()%10);
        CGSize size = CGSizeMake(arc4random()%25, arc4random()%25);

        //Creating the Balls:
        AABallView *ballView = [self customBallViewWithLocation:location velocity:velocity size:size];
        [self.view addSubview:ballView];
        [self.balls addObject:ballView];
    }
    NSLog(@"Number Balls %i", [self.balls count]);

    self.displayLink = [CADisplayLink displayLinkWithTarget:self
                                                   selector:@selector(tick:)];
    
    [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop]
                           forMode:NSDefaultRunLoopMode];
}

@end
