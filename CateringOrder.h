//
//  CateringOrder.h
//  dalesDiner
//
//  Created by ITMAC1 on 2/14/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableCheck.h"
#import "MenuItem.h"

@interface CateringOrder : NSObject

@property (nonatomic, strong) NSString *deliveryAddress;
@property (nonatomic, strong) NSString *contactPhone;
@property (nonatomic, strong) NSMutableDictionary *orderFormDict;
@property (nonatomic, strong) TableCheck *tableCheck;
@property (nonatomic, strong) NSMutableArray *menuItems;

-(void)addMenuChoice:(MenuItem*)menuItem;
-(void)setItemQty:(MenuItem*)menuItem withQty:(int)Qty;
-(void)produceTableCheck;

@end
