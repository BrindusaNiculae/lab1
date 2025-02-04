//
//  main.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ex1.h"
#import "Ex2.h"
#import "Ex3.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Ex1 *ex1 = [[Ex1 alloc] init];
        NSArray *array = @[@"test",@"one",@"ten"];
        NSLog(@": %@", [ex1 cappitalizeWordsFromArray:array]);
        NSLog(@": %@", [ex1 linkAllWordsFromArray:array usingSeparator:@"~"]);
        NSLog(@": %@", [ex1 linkAndCapitalizeAllWordsFromArray:array usingSeparator:@"~"]);
        NSLog(@": %@", [ex1 extractSubstringFromString:@"Hello World" starting:0 ending:5]);
        NSLog(@": %@", [ex1 extractSubstringFromString:@"Hello World" starting:0 ending:1]);
        NSLog([ex1 checkPalindrome:@"madam"] ? @"Yes" :@"No" );
        NSLog([ex1 checkPalindrome:@"mad"] ? @"Yes" :@"No" );
        NSLog([ex1 checkPalindromeFromCharPosition:1 ofAllWordsFromArray:array]  ? @"Yes" :@"No");
        NSLog([ex1 checkPalindromeFromCharPosition:2 ofAllWordsFromArray:array]  ? @"Yes" :@"No");
        NSLog([ex1 checkPalindromeFromCharPosition:3 ofAllWordsFromArray:array]  ? @"Yes" :@"No");
        
//        [ex1 checkPalindrome:@"madam"];
//        [ex1 checkPalindrome:@"man"];
//        [ex1 checkPalindromeFromCharPosition:1 ofAllWordsFromArray:array];
//        [ex1 checkPalindromeFromCharPosition:2 ofAllWordsFromArray:array];
//        [ex1 checkPalindromeFromCharPosition:3 ofAllWordsFromArray:array];
        
        Ex2 *ex2 = [[Ex2 alloc] init];
        NSLog(@": %zd", [ex2 cumputeFibbonaci:10]);
        
//        [ex2 cumputeFibbonaci:10];
        NSDictionary *dictionary = @{@"first":@[@5,@2,@3],
                                     @"second":@[@4,@3],
                                     @"third":@[@11],
                                     @"fourth":@[@1,@3]
                                     };
        NSLog(@": %@", [ex2 keyBigestAverageArray:dictionary]);
        NSArray *pointsArray = @[@[@7.0, @43.0],
                                 @[@7.0, @42.0],
                                 @[@6.0, @42.0],
                                 @[@5.0, @42.0],
                                 @[@6.0, @43.0],
                                 @[@5.0, @43.0]
                                 ];
        
        NSLog(@": %@", [ex2 findClosestPointInArray:pointsArray fromPoint:@[@0.0, @0.0]]);
        NSLog(@": %@", [ex2 findDateAfter:56 from:[NSDate date]]);
       [ex2 checkLeapYear:@"MAY/20/15"];
        [ex2 checkLeapYear:@"MAY/02/12"];
//        [ex2 checkPrimeNumber:14214];
//        [ex2 checkPrimeNumber:3389];
        
         Ex3 *ex3 = [[Ex3 alloc] init];
        [ex3 runAsyncProcces];
    }
    return 0;
}


