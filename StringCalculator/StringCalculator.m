#import <UIKit/UIKit.h>
#import "StringCalculator.h"

@implementation StringCalculator

- (int)add:(NSString*)valuesToAdd
{
    NSString* delimiter = [self defineDelimiter:valuesToAdd];
    NSCharacterSet* setOfCharacter = [NSCharacterSet characterSetWithCharactersInString:delimiter];
    NSArray* stringNumbers = [valuesToAdd componentsSeparatedByCharactersInSet:setOfCharacter];
    
    NSMutableArray* negativesNumbers = [NSMutableArray array];
    int total = 0;
    for (NSString* stringNumber in stringNumbers)
    {
        int number = [stringNumber intValue];
        if(number < 0)
        {
            [negativesNumbers addObject:stringNumber];
        }
        else
        {
            total += number;
        }
    }
    if([negativesNumbers count] > 0)
    {
        NSString* exceptionValues = [negativesNumbers componentsJoinedByString:@", "];
        [NSException raise:@"Invalid values" format:@"Negatives not allowed %@", exceptionValues];
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