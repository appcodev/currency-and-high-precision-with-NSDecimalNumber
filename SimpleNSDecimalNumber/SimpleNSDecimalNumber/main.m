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
        
        
    }
    return 0;
}

