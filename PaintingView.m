//
//  PaintingView.m
//  FingerPrint
//
//  Created by Jaewon Kim on 2017-08-04.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "PaintingView.h"
#import "PointsAndColor.h"


@interface PaintingView ()

@property NSMutableArray *lines;

@end

@implementation PaintingView

//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        _path = [UIBezierPath bezierPath];
//        [_path setLineWidth:5.0];
//    }
//    return self;
//}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _lines = [NSMutableArray new];

    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    for(int i = 0; i < self.lines.count; i++){
        UIBezierPath *path = [[UIBezierPath alloc]init];
        PointsAndColor *pc = [self.lines objectAtIndex:i];
        [pc.color setStroke];
        [path setLineWidth:5.0];
        for (int d = 0; d < pc.points.count; d++) {
            NSValue *value = [pc.points objectAtIndex:d];
            CGPoint point = value.CGPointValue;
            
            if (d == 0) {
                [path moveToPoint:point];
            } else {
                [path addLineToPoint:point];
                [path stroke];
            }
        }
    }
    
    


    

}

-(void)moveToPoint:(CGPoint)point{
    
    PointsAndColor *pointsAndColor = [[PointsAndColor alloc]initWithColor:self.color];
    NSValue *value = [NSValue valueWithCGPoint:point];
    [pointsAndColor.points addObject:value];
    [self.lines addObject:pointsAndColor];
//    [self.path moveToPoint:point];

}

-(void)drawLineToPoint:(CGPoint)point{
    
    NSValue *value = [NSValue valueWithCGPoint:point];
    PointsAndColor *pointsAndColor = [self.lines lastObject];
    [pointsAndColor.points addObject:value];
    
    [self setNeedsDisplay];

}




@end
