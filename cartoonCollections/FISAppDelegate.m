//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 *  Define your method implementations here.
 
 */
- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    NSString *result = @"";
    
    for (NSUInteger i =0; i < [dwarfs count]; i++){
        
        if (i == [dwarfs count]-1){
            result = [result stringByAppendingFormat: @"%lu. %@", i +1, dwarfs[i]];
            NSLog(@"%@", result);
        }else{
                result = [result stringByAppendingFormat: @"%lu. %@ | ", i +1, dwarfs[i]];
            }
       
    }
   
    return result;
}




 - (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
     NSMutableArray *resultArray = [[NSMutableArray alloc]init];
     NSString *resultString = @"";
     for(NSUInteger i =0; i < [powers count]; i++){
        
         resultString = [resultString stringByAppendingFormat:@"%@!", powers[i]];
         resultString = resultString.uppercaseString;
         NSLog(@"%@",resultString);
         [resultArray addObject:resultString];
         resultString = @"";
         
     }

    return resultArray;
}



 - (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
     NSArray *returnArray = [self arrayOfPlaneteerShoutsFromArray:powers];
     NSMutableString *result = [[NSMutableString alloc]initWithString:@"Let our powers combine:"];
     for(NSUInteger i =0; i < [returnArray count]; i++){
         [result appendFormat:@"\n%@", returnArray[i]];
     }
 
    [result appendString:@"\nGo Planet!"];
    return result;
}



 - (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
     NSMutableString *result = [[NSMutableString alloc]init];
     
     for(NSUInteger i = 0; i < [cheesesInStock count]; i++){
         result = cheesesInStock[i];
          if ([premiumCheeseNames containsObject:cheesesInStock[i]]){
             return result;
         }
     }
     
    return @"No premium cheeses in stock.";
}
 - (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
     NSMutableArray *moneyArray = [[NSMutableArray alloc]init];


     for(NSUInteger i = 0; i < [moneyBags count]; i++){
         NSString *moneyString = @"";
         NSUInteger count = [moneyBags[i] length];
         moneyString = [moneyString stringByAppendingFormat:@"$%lu", count];
         [moneyArray addObject:moneyString];
        

     }
     /*
      for(NSUInteger i =0; i < [powers count]; i++){
      
      }
      if $$ change to $2 
      paperMoney addObject:i
      */
    return moneyArray;
}
@end













