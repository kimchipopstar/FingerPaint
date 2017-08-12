//
//  PointsAndColor.m
//  FingerPrint
//
//  Created by Jaewon Kim on 2017-08-12.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "PointsAndColor.h"

@implementation PointsAndColor

- (instancetype)initWithColor:(UIColor*)color
{
    self = [super init];
    if (self) {
        _color = color;
        _points = [NSMutableArray new];
    }
    return self;
}

@end
