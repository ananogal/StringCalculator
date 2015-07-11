#import <UIKit/UIKit.h>
#import "StringCalculator.h"

@implementation StringCalculator

- (int)add:(NSString*)input
{
    NSString* delimiter = [self parseDelimiter:input];
    NSCharacterSet* delimiters = [NSCharacterSet characterSetWithCharactersInString:delimiter];
    NSArray* inputNumbers = [input componentsSeparatedByCharactersInSet:delimiters];
    NSString* negativesNumbers = @"";
    int total = 0;
    
    for (NSString* inputNumber in inputNumbers)
    {
        int number = [inputNumber intValue];
        
        if(number < 0)
        {
            negativesNumbers = [NSString stringWithFormat:@"%@%@", negativesNumbers, inputNumber];
        }
        else
        {
            total += number;
        }
    }
    
    if([negativesNumbers length] > 0)
    {
        [NSException raise:@"Invalid values" format:@"Negatives not allowed %@", negativesNumbers];
    }
    
    return total;
}

-(NSString*)parseDelimiter:(NSString*)input
{
    NSRange start = [input rangeOfString:@"//"];
    NSRange end = [input rangeOfString:@"\n"];
    
    if(start.location != NSNotFound && end.location != NSNotFound)
    {
        return [input substringToIndex:end.location + 1];
    }
    else
    {
        return @"\n,";
    }
}

@end