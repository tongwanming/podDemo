//
//  RJson.m
//  testJson
//
//  Created by 童万明 on 2020/2/20.
//  Copyright © 2020 童万明. All rights reserved.
//

#import "RJson.h"

@implementation RJson

+ (void)saveData:(NSString *)fileName dataArr:(NSArray *)arr{
    
    NSString *path=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    
    NSString *Json_path=[path stringByAppendingPathComponent:fileName];
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:arr,@"data", nil];
    
    //首先判断能否转化为一个json数据，如果能，接下来先把foundation对象转化为NSData类型，然后写入文件
    if ([NSJSONSerialization isValidJSONObject:dic]) {
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:1 error:nil];
        [jsonData writeToFile:Json_path atomically:YES];
    }
}

+ (NSArray *)getData:(NSString *)fileName{
    
    NSString *path=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    
    NSString *Json_path=[path stringByAppendingPathComponent:fileName];
    NSData *data=[NSData dataWithContentsOfFile:Json_path];
    NSDictionary *weatherDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
    NSArray * a = [weatherDic objectForKey:@"data"];
    return a;
}

+(void)CreateActive:(NSArray *)fimeNames {
    
    for (NSString *fileName in fimeNames) {
        NSString *path=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
        
        NSString *Json_path=[path stringByAppendingPathComponent:fileName];
        NSArray *arr = @[];
        NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:arr,@"data", nil];
        
        //首先判断能否转化为一个json数据，如果能，接下来先把foundation对象转化为NSData类型，然后写入文件
        if ([NSJSONSerialization isValidJSONObject:dic]) {
            NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:1 error:nil];
            [jsonData writeToFile:Json_path atomically:YES];
        }
    }
}
@end
