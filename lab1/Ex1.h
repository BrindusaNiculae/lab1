//

//  Exercices.h
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ex1 : NSObject
-(NSArray *)cappitalizeWordsFromArray:(NSArray *)words;
-(NSString *)linkAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator;
-(NSString *)linkAndCapitalizeAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator;
-(NSString *)extractSubstringFromString:(NSString *)string starting:(NSUInteger)startIndex ending:(NSUInteger)endIndex;
-(BOOL)checkPalindrome:(NSString *)string;
-(BOOL)checkPalindromeFromCharPosition:(NSUInteger)index ofAllWordsFromArray:(NSArray *)array;
@end
