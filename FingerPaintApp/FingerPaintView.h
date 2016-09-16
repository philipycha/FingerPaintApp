//
//  FingerPaintView.h
//  FingerPaintApp
//
//  Created by Philip Ha on 2016-09-16.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FingerPaintDelegate <NSObject>

-(NSArray*)paintArray;

@end

@interface FingerPaintView : UIView

@property (nonatomic,strong) id <FingerPaintDelegate> delegate;

@end
