//
//  MyDocument.m
//  CarLot
//
//  Created by Anderson Sacare on 9/4/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "MyDocument.h"
#import "CarArrayController.h"

@implementation MyDocument

- (id)init
{
    self = [super init];
    if (self)
    {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"MyDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

-(IBAction)createItem:(id)sender
{
    CarArrayController *carArray = [self.carListController newObject];
    [self.carListController addObject:carArray];
    [self.carListController rearrangeObjects];
    NSArray *arraySort = [self.carListController arrangedObjects];
    NSUInteger row = [arraySort indexOfObjectIdenticalTo:carArray];
    NSLog(@"Start Editing of %@ in row %lu",carArray,row);
    [self.tableView editColumn:0
                           row:row
                     withEvent:nil
                        select:YES];
}

@end
