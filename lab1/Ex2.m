//
//  Ex2.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import "Ex2.h"

@implementation Ex2

-(NSUInteger)cumputeFibbonaci:(NSUInteger)number
{
    //ex2
    //return [number <= 2 ? 1 : [self cumputeFibbonaci(number -1)] + [self cumputeFibbonaci(number-2)] ];
    NSInteger f1 = 1, f2 = 0, f, i;
    for(i = 1; i < number; i++) {
        f = f1 + f2;
        f1 = f2;
        f2 = f;
    }
    return f;
    
}

-(NSString *)keyBigestAverageArray:(NSDictionary *)dictionary
{
    //ex2
    double max = 0;
    
    NSMutableString  *returnKey;
    returnKey = [[NSMutableString alloc] init];
    
    for(NSMutableString *key in dictionary) {
        id object = [dictionary objectForKey:key];
        double sum = 0;
        //double sum = [[object valueForKeyPath:@"@sum.self"] doubleValue];
        for(NSNumber *nr in object) {
            sum += [nr doubleValue];
        }
        
        double count = [object count];
        double value = sum/count;
        
        if(value > max) {
            max = value;
           returnKey = key;
        }
    }
    return returnKey;
}

-(NSArray *)findClosestPointInArray:(NSArray *)points fromPoint:(NSArray *)origin
{
    //ex2
    double minimumDistance = 100;
    
    NSMutableArray  *closestPoint;
    closestPoint = [[NSMutableArray alloc] initWithCapacity:2];
    
    for(NSArray *point in points) {
        double distance = sqrt(pow(([origin[1] doubleValue] - [point[1] doubleValue]), 2) +
                               pow(([origin[0] doubleValue] - [point[0] doubleValue]), 2));
        
        if(distance < minimumDistance) {
            minimumDistance = distance;
            closestPoint[0] = point[0];
            closestPoint[1] = point[1];
            
        }
    }
    
    return closestPoint;
}

-(NSString *)findDateAfter:(NSInteger)numberOfDays from:(NSDate *)fromDate
{
    //ex2
    NSDateComponents *dataComponent = [[NSDateComponents alloc] init];
    dataComponent.day = numberOfDays;

    NSDate *date = [[NSCalendar currentCalendar] dateByAddingComponents:dataComponent toDate:[NSDate date] options:0];
    
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"MM-dd-yyyy"];
    
    NSString *dateString = [format stringFromDate:date];
    
    return dateString;
}

-(BOOL)checkLeapYear:(NSString *)string
{
    //ex2
    
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"MMM/dd/yy"];
    
    NSDate *date = [format dateFromString:string];
   
    NSLog(@"Data este: %@", date);
    
    NSDateFormatter *format2 = [[NSDateFormatter alloc] init];
    [format2 setDateFormat:@"yyyy"];
    NSString *yearString = [format2 stringFromDate:date];
    NSInteger an = [yearString integerValue];
    
    NSLog(@"Anul este: %ld", an);
    if(an % 4 == 0) return YES;
    
    return NO;
}

-(BOOL)checkPrimeNumber:(NSUInteger)number
{
    //ex2
    return NO;
}

@end
