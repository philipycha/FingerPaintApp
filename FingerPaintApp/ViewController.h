//
//  ViewController.h
//  FingerPaintApp
//
//  Created by Philip Ha on 2016-09-16.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FingerPaintView.h"

@interface ViewController : UIViewController <FingerPaintDelegate>

@property (nonatomic,strong) id <FingerPaintDelegate> delegate;

@property (nonatomic) UIBezierPath *line;



@end

