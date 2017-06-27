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
        _volume = height * length * width;
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
    int numberOfBoxFit;
    
    if (self.volume > anotherBox.volume) {
        numberOfBoxFit = self.volume/anotherBox.volume;
        NSLog(@"%i of those boxes will fit into my box.", numberOfBoxFit);
        return numberOfBoxFit;
    } else {
        numberOfBoxFit = anotherBox.volume/self.volume;
        NSLog(@"%i of my boxes will fit into that box.", numberOfBoxFit);
        return numberOfBoxFit;
    }
}

@end
