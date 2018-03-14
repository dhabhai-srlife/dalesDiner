//
//  TableCheck.h
//  dalesDiner
//
//  Created by ITMAC1 on 1/31/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuItem.h"

@interface TableCheck : NSObject

@property (nonatomic) int serverNumber;
@property (nonatomic) float subTotal;
@property (nonatomic) float tip;
@property (nonatomic) float total;
@property (nonatomic) bool isTakeOut;
@property (nonatomic, strong) NSMutableArray *itemsOrdered;
@property (nonatomic, readonly) NSString *checkID;
@property (nonatomic) int numberOfCustomers;

-(void)addTax;
-(void)addMenuItem:(MenuItem*)menuItem;
-(void)addMenuItems:(NSArray*)menuItemsArray;

@end
