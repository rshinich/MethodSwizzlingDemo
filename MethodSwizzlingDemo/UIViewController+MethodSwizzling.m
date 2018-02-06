//
//  UIViewController+MethodSwizzling.m
//  MethodSwizzlingDemo
//
//  Created by 张忠瑞 on 2018/2/6.
//  Copyright © 2018年 张忠瑞. All rights reserved.
//

#import "UIViewController+MethodSwizzling.h"
#import <objc/runtime.h>

@implementation UIViewController (MethodSwizzling)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
//        获取类方法
//        Class selfClass = object_getClass([self class]);
//        获取实例方法
        Class selfClass = [self class];

        //获取原方法的名称和实现
        SEL oriSEL = @selector(viewWillAppear:);
        Method oriMethod = class_getInstanceMethod(selfClass, oriSEL);
    
        //获取替换方法的名称和实现
        SEL swizzlingSEL = @selector(swizzlingViewWillAppear:);
        Method swizzlingMethod = class_getInstanceMethod(selfClass, swizzlingSEL);
        
        //给原方法添加替换方法实现，为了避免原方法没有实现
        BOOL addSucc = class_addMethod(selfClass, oriSEL, method_getImplementation(swizzlingMethod), method_getTypeEncoding(swizzlingMethod));
        //成功，将原方法的实现替换到替换方法的实现
        if (addSucc) {
            class_replaceMethod(selfClass, swizzlingSEL, method_getImplementation(oriMethod), method_getTypeEncoding(oriMethod));
        }
        //失败，说明原方法已经实现，直接交换方法
        else {
            method_exchangeImplementations(oriMethod, swizzlingMethod);
        }
        
    });
}

- (void)swizzlingViewWillAppear:(BOOL)animated
{
    NSLog(@"%@",self.class);
    return [self swizzlingViewWillAppear:animated];
}


@end
