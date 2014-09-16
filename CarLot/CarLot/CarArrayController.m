//
//  CarArrayController.m
//  CarLot
//
//  Created by Anderson Sacare on 9/4/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "CarArrayController.h"

@implementation CarArrayController

-(id)newObject
{
    id newObj = [super newObject];
    NSDate *now = [NSDate date];
    [newObj setValue:now forKey:@"datePurchased"];
    return newObj;
}

@end
