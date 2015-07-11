#import <UIKit/UIKit.h>
#import "StringCalculator.h"

@implementation StringCalculator

- (int)add:(NSString*)values
{
    NSArray* numbers = [values componentsSeparatedByString:@","];
    int total = 0;
    for (NSString* number in numbers)
    {
        total +=[number intValue];
    }
    
    return total;
}

@end
