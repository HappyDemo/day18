//
//  main.m
//  day18
//
//  Created by Caoxia on 15/10/23.
//  Copyright © 2015年 Caoxia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //最基本的数组创建方式
        NSArray *arr = [NSArray arrayWithObject:@"hello"];
        //第二种基本数组创建方式
        NSString *s = [NSString stringWithFormat:@"good"];
        Person * p = [[Person alloc]init];
        NSArray *arrs = [NSArray arrayWithObjects:@"hello",@"my",s,@"is",@"HappyDemo",p,nil];
        
        /*
         数组的方法:
         1.发送count消息
         */
        NSUInteger count = [arrs count];
        NSLog(@"%lu",(unsigned long)count);
        NSLog(@"%@",arrs);
        
        //2.获取数组指定位置的元素(第一个元素)firstObject
        //[arrs lastObject]
        NSString *se = [arrs firstObject];
        NSLog(@"指定位置的元素是--%@",se);
        NSLog(@"最后一个元素是--%@",[arrs lastObject]);
        
        //获取指定位置的元素:objectAtIndex
        [arrs objectAtIndex:3];
        NSLog(@"第三个位置的元素是:%@",[arrs objectAtIndex:3]);
        
        //是否包含某个元素
        NSArray *arrg = [NSArray arrayWithObjects:@"hello",@"my",s,@"is",@"HappyDemo",p,nil];
        //判断是否包含某个元素
        BOOL flag = [arrg containsObject:@"hell"];
        if (flag) {
            NSLog(@"包含这个元素");
        }
        else
        NSLog(@"不包含这个元素");
        
        //创建数组的简写
        NSArray *arry = @[@"hello",@"world"];
        
        //获取数组元素的简写
        NSLog(@"%@",arry[0]);
    }
    return 0;
}
