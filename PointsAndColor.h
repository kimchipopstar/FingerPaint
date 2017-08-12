//
//  PointsAndColor.h
//  FingerPrint
//
//  Created by Jaewon Kim on 2017-08-12.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PointsAndColor : NSObject

@property UIColor *color;
@property NSMutableArray *points;

- (instancetype)initWithColor:(UIColor*)color;

@end
