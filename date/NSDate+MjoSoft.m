//
//  NSDate+MjoSoft.m
//
//  Created by Jordant Marc (MjoSoft) on 15/04/12.
//

#import "NSDate+MjoSoft.h"

@implementation NSDate (MjoSoft)

static NSMutableDictionary *_cacheFormatters = nil;
static NSLock *_cacheFormattersLock = nil;

+ (void)load
{
  [super load];
  
  _cacheFormattersLock = [NSLock new];
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(lowMemory:) name:UIApplicationDidReceiveMemoryWarningNotification object:nil];
}

+ (void)lowMemory:(NSNotification*)notification
{
  [_cacheFormattersLock lock];
  if (_cacheFormatters) {
    [_cacheFormatters removeAllObjects];
    _cacheFormatters = nil;
  }
  [_cacheFormattersLock unlock];
}

+ (NSDateFormatter*)getDateFormatter:(NSString*)format
{
  [_cacheFormattersLock lock];
  if (!_cacheFormatters) {
    _cacheFormatters = [NSMutableDictionary dictionaryWithCapacity:1];
  }
  NSDateFormatter *dateFormat = _cacheFormatters[format];
  if (!dateFormat) {
    dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat: format];
    _cacheFormatters[format] = dateFormat;
    // Decomment this line if not using Automatic Reference Counting
    //[dateFormat release];
  }
  [_cacheFormattersLock unlock];
  return dateFormat;
}

// Returns a NSString representing the date with the specified format.
- (NSString*)asStringWithFormat:(NSString*)format
{
  if (!format) {
    return @"";
  }
  
  return [[NSDate getDateFormatter:format] stringFromDate: self];
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
