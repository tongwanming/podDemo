//
//  RJson.h
//  testJson
//
//  Created by 童万明 on 2020/2/20.
//  Copyright © 2020 童万明. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RJson : NSObject

+(void)saveData:(NSString *)fileName dataArr:(NSArray *)arr;

+(NSArray *)getData:(NSString *)fileName;

+(void)CreateActive:(NSArray *)fimeNames;

@end

NS_ASSUME_NONNULL_END
