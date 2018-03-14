//
//  CateringOrder.m
//  dalesDiner
//
//  Created by ITMAC1 on 2/14/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import "CateringOrder.h"

@implementation CateringOrder

-(id)init {
    
    self = [super self];
    
    if(self) {
        
        self.orderFormDict = [[NSMutableDictionary alloc] init];
        self.menuItems = [[NSMutableArray alloc] init];
        self.tableCheck = [[TableCheck alloc] init];
        
    }
    
    return self;
}

-(void)addMenuChoice:(MenuItem*)menuItem {
    [self.orderFormDict addEntriesFromDictionary:@{menuItem.itemName:@0}];
    [self.menuItems addObject:menuItem];
}

-(void)setItemQty:(MenuItem*)menuItem withQty:(int)Qty {
    [self.orderFormDict setValue:@(Qty) forKey:menuItem.itemName];
}

-(void)produceTableCheck {
    
    for (id key in self.orderFormDict) {
        
        MenuItem *selectedMenuItem;
        
        for (MenuItem *item in self.menuItems) {
            if ([item.itemName isEqualToString:key]) {
                selectedMenuItem = item;
                break;
            }
        }
        
        for (int i = 0; i < [[self.orderFormDict objectForKey:key]intValue]; i++){
            [self.tableCheck addMenuItem:selectedMenuItem];
        }
        
    }
    
}

@end

