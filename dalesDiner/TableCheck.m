//
//  TableCheck.m
//  dalesDiner
//
//  Created by ITMAC1 on 1/31/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import "TableCheck.h"

@implementation TableCheck

float taxRate = 0.08;

-(id)init {
    
    self = [super self];
    
    if(self) {

        self.itemsOrdered = [[NSMutableArray alloc] init];
    
    }
    
    return self;
}

-(void)addTax {
    
    self.total = self.subTotal * (1 + taxRate);

}

-(void)addMenuItem:(MenuItem*)menuItem {
    
    [self.itemsOrdered addObject:menuItem.itemName];
    self.subTotal += menuItem.itemPrice;
    
}

-(void)addMenuItems:(NSArray*)menuItemsArray {
    
    for (MenuItem *menuItem in menuItemsArray) {
        [self.itemsOrdered addObject:menuItem.itemName];
        self.subTotal += menuItem.itemPrice;
    }
    
}
@end
