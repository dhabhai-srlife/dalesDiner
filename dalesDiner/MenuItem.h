//
//  MenuItem.h
//  dalesDiner
//
//  Created by ITMAC1 on 1/31/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic) float itemPrice;
@property (nonatomic) bool isBeverage;

@end
