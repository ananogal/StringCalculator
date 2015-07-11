#import <UIKit/UIKit.h>
#import "StringCalculator.h"

@implementation StringCalculator

- (int)add:(NSString*)values
{
    NSString* delimiter = [self defineDelimiter:values];
    NSCharacterSet* setOfCharacter = [NSCharacterSet characterSetWithCharactersInString:delimiter];
    NSArray* numbers = [values componentsSeparatedByCharactersInSet:setOfCharacter];
    int total = 0;
    for (NSString* number in numbers)
    {
        total +=[number intValue];
    }
    
    return total;
}

-(NSString*)defineDelimiter:(NSString*)values
{
    NSRange start = [values rangeOfString:@"//"];
    NSRange end = [values rangeOfString:@"\n"];
    if(start.location != NSNotFound && end.location != NSNotFound)
    {
        return [values substringToIndex:end.location + 1];
    }
    else
    {
        return @"\n,";
    }
}

@end