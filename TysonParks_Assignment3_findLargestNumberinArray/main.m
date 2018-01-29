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
        NSArray *numberList = [[NSArray alloc] initWithObjects:@7, @45, @76, @8, @54, @6, @0, @645, @3458, @549, @3472, @1675, @347, @32, @35, @13, @4, @5, @6, @14, nil];
        
        // Find and store array object count
        NSInteger numberOfItems = [numberList count];
        NSLog(@"There are %lu numbers in this list", numberOfItems);
        
        // Cheeky personification of program
        NSLog(@"Let's look at these numbers one by one until we find the highest number");
        
        // TEST Print an item from the array
        //NSLog(@"The array item at reference [4] is %@", numberList[4]);
        
        // TEST Get the NSInteger 'long' value of the NSNumber in the array and print
        //NSInteger numberValue = [numberList[4] integerValue];
        //NSLog(@"The NSNumber %@ has a value of %li", numberList[4], numberValue);
        
        // Create loop counter i
        int i = 0;
        
        // Create temporary variable to store the highest value so far
        NSInteger highestValueSoFar = 0;
        
        // Create a recursive evaluation loop that compares each number value in the array to the highest value stored so far,
        // storing a new highest value when a higher number is found
        for (i = 0; i < numberOfItems; i++) {
            NSInteger numberValue = [numberList[i] integerValue];
            NSLog(@"numbers tested: %li and %li", highestValueSoFar, numberValue);
            highestValueSoFar = (highestValueSoFar >= numberValue) ? highestValueSoFar : numberValue;
            NSLog(@"%li is the new highest value", highestValueSoFar);
        }
        
        // Print the highest number in the array
        NSLog(@"The entire list has been evaluated");
        NSLog(@"The highest number in the list is %li", highestValueSoFar);
    }
    return 0;
}
