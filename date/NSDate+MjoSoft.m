//
//  NSDate+MjoSoft.m
//
//  Created by Jordant Marc (MjoSoft) on 15/04/12.
//

#import "NSDate+MjoSoft.h"

@implementation NSDate (MjoSoft)

// Returns a NSString representing the date with the specified format.
- (NSString*)asStringWithFormat:(NSString*)format
{
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  [formatter setDateFormat: format];
  NSString *str = [formatter stringFromDate: self];

  // Decomment this line if not using Automatic Reference Counting
  //[formatter release];
  
  return str;
}

// Returns the year part of the date.
- (int)year
{
  NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSGregorianCalendar];
  NSDateComponents *comp = [calendar components: NSYearCalendarUnit fromDate: self];
  
  // Decomment this line if not using Automatic Reference Counting
  //[calendar release];

  return [comp year];
}

// Returns the month part of the date.
- (int)month
{
  NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSGregorianCalendar];
  NSDateComponents *comp = [calendar components: NSMonthCalendarUnit fromDate: self];
  
  // Decomment this line if not using Automatic Reference Counting
  //[calendar release];
  
  return [comp month];
}

// Returns the day part of the date.
- (int)day
{
  NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSGregorianCalendar];
  NSDateComponents *comp = [calendar components: NSDayCalendarUnit fromDate: self];
  
  // Decomment this line if not using Automatic Reference Counting
  //[calendar release];
  
  return [comp day];
}

// Returns the hour part of the date.
- (int)hour
{
  NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSGregorianCalendar];
  NSDateComponents *comp = [calendar components: NSHourCalendarUnit fromDate: self];
  
  // Decomment this line if not using Automatic Reference Counting
  //[calendar release];
  
  return [comp hour];
}

// Returns the minute part of the date.
- (int)minute
{
  NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSGregorianCalendar];
  NSDateComponents *comp = [calendar components: NSMinuteCalendarUnit fromDate: self];
  
  // Decomment this line if not using Automatic Reference Counting
  //[calendar release];
  
  return [comp minute];
}

// Returns the second part of the date.
- (int)second
{
  NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSGregorianCalendar];
  NSDateComponents *comp = [calendar components: NSSecondCalendarUnit fromDate: self];
  
  // Decomment this line if not using Automatic Reference Counting
  //[calendar release];
  
  return [comp second];
}

@end
