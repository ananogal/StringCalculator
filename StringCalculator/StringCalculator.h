//
//  StringCalculator.h
//  StringCalculator
//
//  Created by Ana Nogal on 11/07/2015.
//  Copyright (c) 2015 Ana Nogal. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for StringCalculator.
FOUNDATION_EXPORT double StringCalculatorVersionNumber;

//! Project version string for StringCalculator.
FOUNDATION_EXPORT const unsigned char StringCalculatorVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <StringCalculator/PublicHeader.h>

@interface StringCalculator : NSObject

- (int)add:(NSString*)values;
@end

