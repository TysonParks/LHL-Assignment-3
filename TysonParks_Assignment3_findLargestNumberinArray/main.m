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
        NSArray *numberList = [[NSArray alloc] initWithObjects:@547, @45, @52, @785, @135, @15, @17, @9, @378, @456, @586, @24, @0, @15, @-10, @400, @-30, @52, nil];
        
        // Find and store the object count of this array
        NSInteger numberOfItems = [numberList count];
        NSLog(@"There are %lu numbers in this list", numberOfItems);
        
        // Cheeky personification of program
        NSLog(@"Let's look at these numbers one by one and put them in a new list in order from lowest to highest number");
     
        // Create loop counter i which corresponds to and calls numberList indices
        NSUInteger i = 1;
        // Create loop counter j which corresponds to and calls orderedNumberList indices
        NSUInteger j = 0;
        // Create new mutableArray in which to build new orderedNumberList
        NSMutableArray *orderedNumberList = [[NSMutableArray alloc] initWithObjects:numberList[0], nil];
        NSLog(@"New list created with the first number of the original list: %@", orderedNumberList);

        
        for (i = 1; i < numberOfItems; i++) {
            NSInteger originalArrayNumberValue = [numberList[i] integerValue];
            NSLog(@"at i = %lu, originalArrayNumberValue = %li", i, originalArrayNumberValue);
            for (j = 0; j < i; j++) {
                NSInteger newArrayNumberValue = [orderedNumberList[j] integerValue];
                NSLog(@"at j = %lu, newArrayNumberValue = %li", j, newArrayNumberValue);
                if (j == (i-1) && originalArrayNumberValue > newArrayNumberValue) {
                    // The number to be added is larger than all the numbers in the new list
                    // So add to the new list at after all the other numbers
                    NSInteger newIndex = j+1;
                    [orderedNumberList insertObject:numberList[i] atIndex:(newIndex)];
                    NSLog(@"%li is more than the largest number in the new list, %li so I added %li after %li at index %lu", originalArrayNumberValue, newArrayNumberValue, originalArrayNumberValue, newArrayNumberValue, newIndex);
                    NSUInteger numberOfCurrentItems = [orderedNumberList count];
                    NSLog(@"The updated list has %lu numbers: %@", numberOfCurrentItems, orderedNumberList);
                    break;
                } else if(originalArrayNumberValue <= newArrayNumberValue) {
                    // The number to be added is smaller than or equal to the current number being checked in the new list
                    // So add to new list just before the number being checked against
                    [orderedNumberList insertObject:numberList[i] atIndex:j];
                    NSLog(@"%li is less than or equal to %li so I added %li before %li at index %lu", originalArrayNumberValue, newArrayNumberValue, originalArrayNumberValue, newArrayNumberValue, j);
                    NSUInteger numberOfCurrentItems = [orderedNumberList count];
                    NSLog(@"The updated list has %lu numbers: %@", numberOfCurrentItems, orderedNumberList);
                    break;
                } else if (originalArrayNumberValue > newArrayNumberValue) {
                    // The number to be added is larger than the current number being checked in the new list
                    // So we need to check it against the next number in the new list
                    continue;
                }
                
            }
            
        }
        // List sorting has completed
        NSLog(@"Ended sorting at i = %lu and j = %lu", i, j);
        NSUInteger numberOfFinalItems = [orderedNumberList count];
        NSLog(@"orderedNumberlist now contains %lu items: %@", numberOfFinalItems, orderedNumberList);
        
        
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
