//
//  LineAndColorSaver.m
//  FingerPrint
//
//  Created by Jaewon Kim on 2017-08-05.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "LineAndColorSaver.h"

@implementation LineAndColorSaver

- (instancetype)init
{
    self = [super init];
    if (self) {
        _lines = [NSMutableArray new];
    }
    return self;
}

@end
