//
//  main.m
//  TysonParks_Assignment3_findLargestNumberinArray
//
//  Created by Tyson Parks on 1/28/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Initialize array containing numbers of size determined by objects
        NSArray *numberList = [[NSArray alloc] initWithObjects:@7, @45, @76, @8, @54, @6, @0, @645, @3458, @549, @3472, @9675, @347, @32, @35, @13, @4, @5, @6, @14, nil];
        
        // Find and store array object count
        NSInteger numberOfItems = [numberList count];
        NSLog(@"There are %lu items in this list", numberOfItems);
        
        // Print an item from the array
        NSLog(@"The array item at reference [4] is %@", numberList[4]);
        
        //Get the NSInteger 'long' value of the NSNumber in the array and print
        NSInteger numberValue = [numberList[4] integerValue];
        NSLog(@"The NSNumber %@ has a value of %li", numberList[4], numberValue);
        
        // Create evaluation loop that compares 2 consecutive numbers, chooses the highest number and stores that high value
        //NSInteger highestValueSoFar = 0;
        //for (int i = 0; i < numberOfItems; i++) {
        //    highestValueSoFar = (highestValueSoFar >= numberList[i]) ? highestValueSoFar : numberList[i];
        //    NSLog(@")
        //}
        
        // Print highest number
        //NSLog(@"The highest number in the array is %@", highestValueSoFar);
    }
    return 0;
}
