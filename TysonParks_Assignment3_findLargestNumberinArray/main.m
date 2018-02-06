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
        
        // Initialize array containing input list of numbers of size determined by objects presented
        NSArray *numberList = [[NSArray alloc] initWithObjects:@547, @45, @52, @785, @135, @15, @17, @9, @378, @456, @586, @24, @0, @15, @-10, @400, @-30, @52, nil];
        
        // Find and store the object count of this array
        NSInteger numberOfItems = [numberList count];
        NSLog(@"There are %lu numbers in this input list", numberOfItems);
        
        // Lets start crunching numbers!
        NSLog(@"Let's look at the input list numbers one by one and sort them into an output list in order from lowest to highest");
     
        
        // Create loop counter i which corresponds to and calls numberList indices
        NSUInteger i = 1;
        // Create loop counter j which corresponds to and calls orderedNumberList indices
        NSUInteger j = 0;
        // Create new mutableArray in which to build new orderedNumberList
        NSMutableArray *orderedNumberList = [[NSMutableArray alloc] initWithObjects:numberList[0], nil];
        NSLog(@"Output list created with the first number of the input list: %@", orderedNumberList);

        // Sorting algorithm composed of a for loop nested inside another for loop
        // i represents and calls the index of numbers in the input list
        for (i = 1; i < numberOfItems; i++) {
            NSInteger originalArrayNumberValue = [numberList[i] integerValue];
            NSLog(@"at i = %lu, the input list number = %li", i, originalArrayNumberValue);
            // j represents and calls the index of numbers in the output list
            for (j = 0; j < i; j++) {
                NSInteger newArrayNumberValue = [orderedNumberList[j] integerValue];
                NSLog(@"at j = %lu, the output list number = %li", j, newArrayNumberValue);
                if (j == (i-1) && originalArrayNumberValue > newArrayNumberValue) {
                    // The input number to be added is larger than all the numbers in the output list
                    // So add input number to the output list after all the other numbers
                    NSInteger newIndex = j+1;
                    [orderedNumberList insertObject:numberList[i] atIndex:(newIndex)];
                    NSLog(@"%li is larger than the largest number in the output list, %li so I added %li to the output list after %li at index %lu", originalArrayNumberValue, newArrayNumberValue, originalArrayNumberValue, newArrayNumberValue, newIndex);
                    NSUInteger numberOfCurrentItems = [orderedNumberList count];
                    NSLog(@"The updated output list has %lu numbers: %@", numberOfCurrentItems, orderedNumberList);
                    break;
                } else if(originalArrayNumberValue <= newArrayNumberValue) {
                    // The input number to be added is smaller than or equal to the current number being checked in the output list
                    // So add the input number to the output list just before the output number being checked
                    [orderedNumberList insertObject:numberList[i] atIndex:j];
                    NSLog(@"%li is less than or equal to %li so I added %li to the output list before %li at index %lu", originalArrayNumberValue, newArrayNumberValue, originalArrayNumberValue, newArrayNumberValue, j);
                    NSUInteger numberOfCurrentItems = [orderedNumberList count];
                    NSLog(@"The updated output list has %lu numbers: %@", numberOfCurrentItems, orderedNumberList);
                    break;
                } else if (originalArrayNumberValue > newArrayNumberValue) {
                    // The input number to be added is larger than the current output number being checked in the output list
                    // So we need to check the input number against the next number in the output list
                    continue;
                }
                
            }
            
        }
        
        
        // List sorting has completed
        NSLog(@"Sorting ended at i = %lu and j = %lu", i, j);
        NSUInteger numberOfFinalItems = [orderedNumberList count];
        NSLog(@"The ouput list now contains %lu items: %@", numberOfFinalItems, orderedNumberList);
        
        
        // Then what is the largest number?
        NSNumber *largestNumber = orderedNumberList[(numberOfFinalItems-1)];
        NSLog(@"The largest number in the list is %@", largestNumber);
        
        // Then what is the smallest number?
        NSNumber *smallestNumber = orderedNumberList[0];
        NSLog(@"The smallest number in the list is %@", smallestNumber);
        
        // Then what is the median number?
        NSNumber *medianNumber;
        // If there is an odd number of items in the list, the median is the middle item
        if ((numberOfFinalItems) % 2) {
            medianNumber = orderedNumberList[((numberOfFinalItems-1) / 2)];
        // If there is an even number of items in the list, the median is the average of the middle two items
        } else {
            float medianNumberOneValue = [orderedNumberList[(numberOfFinalItems/2)] floatValue];
            float medianNumberTwoValue = [orderedNumberList[(numberOfFinalItems/2 - 1)] floatValue];
            float medianNumberValue = (medianNumberOneValue + medianNumberTwoValue) / 2;
            medianNumber = [NSNumber numberWithFloat:medianNumberValue];
        }
        NSLog(@"The median number in the list is %@", medianNumber);
        
    }
    
    
    return 0;
}
