//
//  MyDocument.h
//  CarLot
//
//  Created by Anderson Sacare on 9/4/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MyDocument : NSPersistentDocument <NSTableViewDataSource>

@property (nonatomic) IBOutlet NSArrayController *carListController;
@property (nonatomic) IBOutlet NSTableView *tableView;
@property (nonatomic) IBOutlet NSDatePicker *dateToday;


-(IBAction)createItem:(id)sender;

@end
