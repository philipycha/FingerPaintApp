//
//  FingerPaintView.m
//  FingerPaintApp
//
//  Created by Philip Ha on 2016-09-16.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "FingerPaintView.h"
#import "ViewController.h"


@implementation FingerPaintView

-(void)drawRect:(CGRect)rect{
    // ask our delegate for data
    
//    UIColor *color = [UIColor redColor];
    
    NSArray *lines = [self.delegate paintArray];
    
    for (UIBezierPath *currentLine in lines) {
        [[UIColor blueColor] setStroke];
        [currentLine setLineWidth:3.0];
        [currentLine stroke];
        
        
    }
    
}


@end
