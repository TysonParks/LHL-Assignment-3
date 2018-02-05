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
        
        // Initialize array containing numbers of size determined by objects presented
        NSArray *numberList = [[NSArray alloc] initWithObjects:@-547, @-45, @-52, @-785, @-135, @-15, @-17, @-9, nil];
        
        // Find and store array object count
        NSInteger numberOfItems = [numberList count];
        NSLog(@"There are %lu numbers in this list", numberOfItems);
        
        // Cheeky personification of program
        NSLog(@"Let's look at these numbers one by one until we find the highest number");
     
        // Create loop counter i
        int i = 1;
        NSInteger firstValue = [numberList[0] integerValue];
        NSMutableArray *orderedNumberList = [[NSMutableArray alloc] init];
        [orderedNumberList addObject:numberList[0]];
        NSLog(@"orderedNumberlist now contains: %@", orderedNumberList);
        
        
        for (i = 1; i < numberOfItems; i++) {
            NSInteger originalNumberValue = [numberList[i] integerValue];
            
            if (<#condition#>) {
                <#statements#>
            }
        }
         
        
        
        
        
        
        
        
        // Create temporary variable to store the highest value so far
        // Initialize with the first number in the list
        // NSInteger highestValueSoFar = [numberList[0] integerValue];
        
        // Create a recursive evaluation loop that compares each number value in the array to the highest value stored so far,
        // storing a new highest value when a higher number is found
        // Start at Array index[1] instead of index[0] because highestValueSoFar is already initialized to the index[0] value
        /* for (i = 1; i < numberOfItems; i++) {
            NSInteger numberValue = [numberList[i] integerValue];
            NSLog(@"numbers tested: %li and %li", highestValueSoFar, numberValue);
            highestValueSoFar = (highestValueSoFar >= numberValue) ? highestValueSoFar : numberValue;
            NSLog(@"%li is the new highest value", highestValueSoFar);
        }
        */
        
        // After loop has finished, print the highest number in the array
        /*
        NSLog(@"The entire list has been evaluated");
        NSLog(@"The highest number in the list is %li", highestValueSoFar);
         */
    }
    return 0;
}
