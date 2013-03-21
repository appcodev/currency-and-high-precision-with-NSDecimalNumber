//
//  main.m
//  SimpleNSDecimalNumber
//
//  Created by Chalermchon Samana on 3/21/13.
//  Copyright (c) 2013 Onzondev Innovation Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDecimalNumber *dc1 = [NSDecimalNumber decimalNumberWithString:@"-56.0001"];
        NSDecimalNumber *dc2 = [NSDecimalNumber decimalNumberWithMantissa:99999999888888
                                                                 exponent:10
                                                               isNegative:YES];
        NSDecimalNumber *dc3 = [NSDecimalNumber decimalNumberWithMantissa:5009
                                                                 exponent:-10
                                                               isNegative:NO];
        
        NSLog(@"dc1:%@ | dc2:%@ | dc3:%@",dc1,dc2,dc3);
        
        NSDecimalNumber *d1 = [dc3 decimalNumberByAdding:dc2];
        NSLog(@"= d1=%@ <> dc3=%@",d1,dc3);
        NSDecimalNumber *d2 = [dc2 decimalNumberBySubtracting:dc1];
        NSLog(@"= d2=%@ <> dc2=%@",d2,dc2);
        NSDecimalNumber *d3 = [dc1 decimalNumberByMultiplyingBy:dc3];
        NSLog(@"= d3=%@ <>  dc1=%@",d3,dc1);
        NSDecimalNumber *d4 = [dc3 decimalNumberByDividingBy:dc3];
        NSLog(@"= d4=%@ <>  dc3=%@",d4,dc3);
        NSDecimalNumber *d5 = [dc2 decimalNumberByRaisingToPower:6];
        NSLog(@"= d5=%@ <>  dc2=%@",d5,dc2);
        
        NSDecimalNumber *d6 = [d5 decimalNumberByMultiplyingByPowerOf10:21];
        NSLog(@"= d6=%@",d6);
        
        
        NSDecimalNumber *dc4 = [NSDecimalNumber decimalNumberWithMantissa:599
                                                                 exponent:-128
                                                               isNegative:NO];
        NSLog(@"dc4 = %@",dc4);
        NSDecimalNumber *dc5 = [NSDecimalNumber decimalNumberWithMantissa:599
                                                                 exponent:120
                                                               isNegative:NO];
        
        NSLog(@"dc5 = %@",dc5);
        
        NSDecimalNumber *d7 = [dc5 decimalNumberByAdding:dc4];
        NSLog(@"= d7 = %@",d7);
        
    }
    return 0;
}

