//
//  PaintingView.m
//  FingerPrint
//
//  Created by Jaewon Kim on 2017-08-04.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "PaintingView.h"
#import "LineAndColorSaver.h"

@interface PaintingView ()

@property NSMutableArray *lineArray;
@property UIBezierPath *path;
@property LineAndColorSaver *lineColor;


@end

@implementation PaintingView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _lineColor = [LineAndColorSaver new];
        _lineArray = [NSMutableArray new];
        _path = [UIBezierPath new];
        [self.path setLineWidth:5.0];
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _lineColor = [LineAndColorSaver new];
        _lineArray = [NSMutableArray new];
        _path = [UIBezierPath new];
        [self.path setLineWidth:5.0];
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {

    [self.path stroke];
    
    
}


-(void)moveToPoint:(CGPoint)point{
    
    NSValue *value = [NSValue valueWithCGPoint:point];
    self.lineColor.color = self.color;
    [self.lineColor.color setStroke];
    [self.lineColor.lines addObject:value];
    [self.lineArray addObject:self.lineColor.lines];
    
    for (int i=0; i < [self.lineColor.lines count]; i++) {
        NSValue *valueFromArray = [self.lineColor.lines objectAtIndex:i];
        CGPoint pointFromValue = [valueFromArray CGPointValue];
        [self.path moveToPoint:pointFromValue];
        
    }
    
}

-(void)drawLineToPoint:(CGPoint)point{
    
    [self.path addLineToPoint:point];
    [self setNeedsDisplay];
    
}

//for (int i=0; i < [self.lineColor.lines count]; i++) {
//
//    [self.lineColor.color setStroke];
//    [self.path moveToPoint:pointFromValue];
//    
//}


@end
