#import <UIKit/UIKit.h>
#import "StringCalculator.h"

@implementation StringCalculator

- (int)add:(NSString*)values
{
    NSRange start = [values rangeOfString:@"//"];
    NSRange end = [values rangeOfString:@"\n"];
    NSString* delimiter = @"";
    if(start.location != NSNotFound && end.location != NSNotFound)
    {
        delimiter = [values substringToIndex:end.location + 1];
    }
    else
    {
        delimiter = @"\n,";
    }
    NSCharacterSet* setOfCharacter = [NSCharacterSet characterSetWithCharactersInString:delimiter];
    NSArray* numbers = [values componentsSeparatedByCharactersInSet:setOfCharacter];
    int total = 0;
    for (NSString* number in numbers)
    {
        total +=[number intValue];
    }
    
    return total;
}

@end