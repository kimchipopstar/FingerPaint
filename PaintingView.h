//
//  PaintingView.h
//  FingerPrint
//
//  Created by Jaewon Kim on 2017-08-04.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaintingView : UIView

@property UIColor *color;
@property NSUInteger colorNumber;


-(void)moveToPoint:(CGPoint)point;

-(void)drawLineToPoint:(CGPoint)point;


@end
