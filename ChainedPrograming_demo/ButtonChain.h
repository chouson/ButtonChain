//
//  ButtonChain.h
//  ChainedPrograming_demo
//
//  Created by xxdl_ccz on 17/2/5.
//  Copyright © 2017年 xxdl_ccz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonChain : UIButton

+(ButtonChain *(^)(void))initialization;

-(ButtonChain *(^)(CGRect rect))rect;

-(ButtonChain *(^)(UIColor * color))bgColor;

-(ButtonChain *(^)(NSString * title))normalTitle;

-(ButtonChain *(^)(NSString * title))selectTitle;

-(ButtonChain *(^)(id object, SEL method))action;

@end
