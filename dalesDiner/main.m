//
//  main.m
//  dalesDiner
//
//  Created by ITMAC1 on 1/31/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableCheck.h"
#import "MenuItem.h"
#import "GroupTableCheck.h"
#import "CateringOrder.h"

int main(int argc, const char * argv[]) {
    
    // Creating a dummy table check
    TableCheck *table1 = [[TableCheck alloc] init];
    table1.isTakeOut =  YES;
    //float savedTip = table1.tip;
    
    // Creating grilled cheese menu item
    MenuItem *grilledCheese = [[MenuItem alloc] init];
    grilledCheese.itemName = @"Grilled Cheese";
    grilledCheese.itemPrice = 4.50;
    
    // Creating soup du jor menu item
    MenuItem *soupDuJor = [[MenuItem alloc] init];
    soupDuJor.itemName = @"Soup Du Jor";
    soupDuJor.itemPrice = 3.25;
    
    /*
    // Adding item 1 (grilled cheese)
    [table1.itemsOrdered addObject:grilledCheese];
    table1.subTotal += grilledCheese.itemPrice;
    
    // Adding item 2 (soup du jor)
    [table1.itemsOrdered addObject:soupDuJor];
    table1.subTotal += soupDuJor.itemPrice;
    
    [table1 addMenuItem:grilledCheese];
    
    [table1 addMenuItem:soupDuJor];
    */
    
    [table1 addMenuItems:@[grilledCheese, soupDuJor]];
    [table1 addTax];
    
    GroupTableCheck *group1 = [[GroupTableCheck alloc] init];
    [group1 addMenuItem:grilledCheese];
    [group1 addMenuItem:soupDuJor];
    group1.numberOfCustomers = 10;
    [group1 checkMinimum];
    
    CateringOrder *catering1 = [[CateringOrder alloc] init];
    [catering1 addMenuChoice:grilledCheese];
    [catering1 addMenuChoice:soupDuJor];
    
    [catering1 setItemQty:grilledCheese withQty:4];
    
    [catering1 produceTableCheck];
 
    return 0;
}
