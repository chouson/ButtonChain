//
//  ButtonChain.m
//  ChainedPrograming_demo
//
//  Created by xxdl_ccz on 17/2/5.
//  Copyright © 2017年 xxdl_ccz. All rights reserved.
//

#import "ButtonChain.h"

@implementation ButtonChain

+(ButtonChain *(^)(void))initialization {
    return ^id(void) {
        return [ButtonChain buttonWithType:UIButtonTypeCustom];
    };
}

-(ButtonChain *(^)(CGRect))rect {
    return ^id(CGRect rect) {
        return [self addRect:rect];
    };
}

-(ButtonChain *(^)(UIColor *))bgColor {
    return ^id(UIColor * color) {
        return [self addBgColor:color];
    };
}

-(ButtonChain *(^)(NSString *))normalTitle {
    return ^id(NSString * title) {
        return [self addNormalTitle:title];
    };
}

-(ButtonChain *(^)(NSString *))selectTitle {
    return ^id(NSString * title) {
        return [self addSelectTitle:title];
    };
}

-(ButtonChain *(^)(id, SEL))action {
    return ^id(id object, SEL method) {
        return [self addTarget:object action:method];
    };
}

/*-------------------------分割线----------------------------*/
-(ButtonChain *)addRect:(CGRect)rect {
    self.frame = rect;
    return self;
}

-(ButtonChain *)addBgColor:(UIColor *)bgColor {
    self.backgroundColor = bgColor;
    return self;
}

-(ButtonChain *)addNormalTitle:(NSString *)title {
    [self setTitle:title forState:UIControlStateNormal];
    return self;
}

-(ButtonChain *)addSelectTitle:(NSString *)title {
    [self setTitle:title forState:UIControlStateSelected];
    return self;
}

-(ButtonChain *)addTarget:(id)object action:(SEL)action {
    [self addTarget:object action:action forControlEvents:UIControlEventTouchUpInside];
    return self;
}

@end
