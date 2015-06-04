//
//  YueView.m
//  project_yue2
//
//  Created by Dee on 15/6/4.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "YueView.h"

@implementation YueView

-(instancetype)init
{
    if (self =[super init]) {
        UIButton *btn =[UIButton buttonWithType:UIButtonTypeContactAdd];
        [self addSubview:btn];

        
    }
    return self;
}
-(void)layoutSubviews
{
//    NSLog(@"%@",NSStringFromCGRect(self.frame));;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
