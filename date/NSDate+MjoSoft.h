//
//  NSDate+MjoSoft.h
//
//  Created by Jordant Marc (MjoSoft) on 15/04/12.
//

#import <Foundation/Foundation.h>

@interface NSDate (MjoSoft)

// Returns a NSString representing the date with the specified format.
- (NSString*)asStringWithFormat:(NSString*)format;

// Returns the year part of the date.
- (int)year;

// Returns the month part of the date.
- (int)month;

// Returns the day part of the date.
- (int)day;

// Returns the hour part of the date.
- (int)hour;

// Returns the minute part of the date.
- (int)minute;

// Returns the second part of the date.
- (int)second;

@end
