//
//  Box.h
//  Boxes
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;


- (instancetype)initWithHeight:(float)height withWidth:(float)width withLength:(float)length;

- (float)volume;

- (int) fitWithinBox:(NSObject *)anotherBox;

@end
