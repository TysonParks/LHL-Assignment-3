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
        
        
    }
    return 0;
}
