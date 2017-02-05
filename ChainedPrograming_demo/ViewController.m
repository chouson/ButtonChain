//
//  ViewController.m
//  ChainedPrograming_demo
//
//  Created by xxdl_ccz on 17/2/4.
//  Copyright © 2017年 xxdl_ccz. All rights reserved.
//

#import "ViewController.h"
#import "ButtonChain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    
    ButtonChain * btnChain = [ButtonChain initialization]().rect(CGRectMake((width-100)/2, height/2, 100, 40))
                                                        .normalTitle(@"normal")
                                                        .bgColor([UIColor blackColor])
                                                        .action(self, @selector(changeSelected:));

    [self.view addSubview:btnChain];
}

-(void)changeSelected:(ButtonChain *)sender {
    sender.selected = !sender.selected;
    if (!sender.selected) {
        sender.normalTitle(@"normal").bgColor([UIColor blackColor]);
    }
    else {
        sender.selectTitle(@"selected").bgColor([UIColor purpleColor]);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
