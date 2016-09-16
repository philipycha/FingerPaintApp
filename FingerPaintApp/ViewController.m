//
//  ViewController.m
//  FingerPaintApp
//
//  Created by Philip Ha on 2016-09-16.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIBezierPath *currentPath;
@property (nonatomic) NSMutableArray *lineArray;
@property (weak, nonatomic) IBOutlet FingerPaintView *fingerPaintView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.fingerPaintView.delegate = self;
    
    self.lineArray = [NSMutableArray new];
    
    UIPanGestureRecognizer *drawGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drawGesture:)];
    
    drawGesture.minimumNumberOfTouches = 1;
    
    [self.view addGestureRecognizer:drawGesture];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (IBAction)drawGesture:(UIPanGestureRecognizer *)sender {
    
    CGPoint position = [sender locationInView:self.fingerPaintView];
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        
        self.currentPath = [UIBezierPath new];
        
        [self.lineArray addObject:self.currentPath];
        
        [self.currentPath moveToPoint:position];
        
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        
        [self.currentPath addLineToPoint:position];
        
    }
    
    else if (sender.state == UIGestureRecognizerStateEnded) {
        
    }
    
    [self.fingerPaintView setNeedsDisplay];
}


- (NSArray *)paintArray {
    
    NSArray *paintArray = [[NSArray alloc] initWithArray:self.lineArray];
    
    return paintArray;
    
}

@end
