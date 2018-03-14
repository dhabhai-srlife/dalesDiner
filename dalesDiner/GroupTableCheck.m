//
//  GroupTableCheck.m
//  dalesDiner
//
//  Created by ITMAC1 on 2/5/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import "GroupTableCheck.h"

@implementation GroupTableCheck

-(void)addTip {
    float tipRate = 0.20;
    self.tip = tipRate * self.subTotal;
    self.total = self.subTotal + self.tip;
}

-(void)checkMinimum {
    
    if (self.itemsOrdered.count < self.numberOfCustomers) {
        
        float fee = 3.00;
        
        MenuItem *feeItem = [[MenuItem alloc] init];
        feeItem.itemName = @"Group Minimum Fee";
        feeItem.itemPrice = fee;
        
        float numberOfFees = self.numberOfCustomers - self.itemsOrdered.count;
        
        for (int i = numberOfFees; i > 0; i--) {
            [self addMenuItem:feeItem];
        }
    }
}

@end
