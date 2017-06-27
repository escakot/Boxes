//
//  Box.m
//  Boxes
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight:(float)height withWidth:(float)width withLength:(float)length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float)volume {
    float boxVolume = self.height * self.width * self.length;
    return boxVolume;
}


//This method will compare both Box Objects and return the number of Boxes
//that will fit into each box. (Whichever is bigger)
- (int) fitWithinBox:(Box *)anotherBox{
    float boxVolume = self.height * self.width * self.length;
    float anotherBoxVolume = [anotherBox volume];
    int numberOfBoxFit;
    
    if (boxVolume > anotherBoxVolume) {
        numberOfBoxFit = boxVolume/anotherBoxVolume;
        NSLog(@"%i of those boxes will fit into my box.", numberOfBoxFit);
        return numberOfBoxFit;
    } else {
        numberOfBoxFit = anotherBoxVolume/boxVolume;
        NSLog(@"%i of my boxes will fit into that box.", numberOfBoxFit);
        return numberOfBoxFit;
    }
}

@end
