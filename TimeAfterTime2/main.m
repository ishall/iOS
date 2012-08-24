//
//  main.m
//  TimeAfterTime2
//
//  Created by somename on 8/24/12.
//  Copyright (c) 2012 somename. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSLog(@"The date now is %p", now);
        NSLog (@"the date now is %@", now);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog (@"the date later will be %@", later);
        
        //set the first date
        NSDateComponents *firstDate = [[NSDateComponents alloc]init];
        [firstDate setYear:2011];
        [firstDate setMonth:6];
        [firstDate setDay:8];
        [firstDate setHour:10];
        
        NSCalendar *greg = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
        
        NSDate *initDate = [greg dateFromComponents:firstDate];
        
        //set the next date
        
        NSDateComponents *secondDate = [[NSDateComponents alloc]init];
        [secondDate setYear:2012];
        [secondDate setMonth:6];
        [secondDate setDay:8];
        [secondDate setHour:10];
                
        NSDate *laterDate = [greg dateFromComponents:secondDate];
        
        //difference between the two dates
        
        double diffDate = [laterDate timeIntervalSinceDate:initDate];
        
        NSLog(@"the difference is %f", diffDate);
        

        
        
    }
    return 0;
}

