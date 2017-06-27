//
//  main.m
//  Boxes
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Box *mySmallBox = [[Box alloc] initWithHeight:3 withWidth:3 withLength:3];
        NSLog(@"Small Box Volume:%f", [mySmallBox volume]);
        
        Box *myMediumBox = [[Box alloc] initWithHeight:5 withWidth:5 withLength:5];
        
        Box *myBigBox =[[Box alloc] initWithHeight:7 withWidth:7 withLength:7];
        int bigBoxMediumBoxFit = [myBigBox fitWithinBox:myMediumBox];
        int smallBoxBigBoxFit = [mySmallBox fitWithinBox:myBigBox];
    }
    return 0;
}
