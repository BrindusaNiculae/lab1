//
//  Exercices.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import "Ex1.h"


@implementation Ex1
-(NSArray *)cappitalizeWordsFromArray:(NSArray *)words
{
    //ex1
    NSMutableArray  *returnArray;
    returnArray = [[NSMutableArray alloc] init];
    
    for(NSString *element in words) {
        [returnArray addObject:[element capitalizedString]];
    }
    
    return returnArray;
}

-(NSString *)linkAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator
{
    //ex1
    NSMutableString  *returnString;
    returnString = [[NSMutableString alloc] init];
    
    returnString = [words componentsJoinedByString:separator];
    
    return returnString;
}

-(NSString *)linkAndCapitalizeAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator
{
    //ex1
    NSMutableArray  *returnArray;
    returnArray = [[NSMutableArray alloc] init];

    returnArray = [self cappitalizeWordsFromArray:words];
    return [self linkAllWordsFromArray:returnArray usingSeparator:separator];
}

-(NSString *)extractSubstringFromString:(NSString *)string starting:(NSUInteger)startIndex ending:(NSUInteger)endIndex
{
    //ex1
    NSMutableString  *returnString;
    returnString = [[NSMutableString alloc] init];
    
    returnString = [string substringWithRange:NSMakeRange(startIndex, endIndex + 1 - startIndex)];
    return returnString;
}

-(BOOL)checkPalindrome:(NSString *)string
{
    //ex1
    
    NSMutableString *reversedString;
    reversedString = [[NSMutableString alloc] init];
    NSUInteger charIndex = 0;
    
    while(string && charIndex < [string length]) {
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[string substringWithRange:subStrRange]];
        charIndex++;
    }
    return [string isEqualToString:reversedString];
}

-(BOOL)checkPalindromeFromCharPosition:(NSUInteger)index ofAllWordsFromArray:(NSArray *)array
{
    //ex1
    return NO;
}
@end
