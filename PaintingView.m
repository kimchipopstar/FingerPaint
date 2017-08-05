//
//  PaintingView.m
//  FingerPrint
//
//  Created by Jaewon Kim on 2017-08-04.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "PaintingView.h"

@interface PaintingView ()

@property UIBezierPath *path;

@end

@implementation PaintingView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _path = [UIBezierPath bezierPath];
        [_path setLineWidth:5.0];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _path = [UIBezierPath bezierPath];
        [_path setLineWidth:5.0];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    [self.color setStroke];
    
    [self.path stroke];
}

-(void)moveToPoint:(CGPoint)point{
    
    [self.path moveToPoint:point];

}

-(void)drawLineToPoint:(CGPoint)point{
    
    [self.path addLineToPoint:point];
    
    [self setNeedsDisplay];

}




@end
