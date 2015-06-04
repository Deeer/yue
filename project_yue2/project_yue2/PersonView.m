//
//  PersonView.m
//  project_yue2
//
//  Created by Dee on 15/6/4.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "PersonView.h"

@implementation PersonView


-(instancetype)init
{
    if (self =[super init]) {
        
        UIView *view =[[UIView alloc]init];
        view.frame =CGRectMake(0, 0, 100, 100);
        view.backgroundColor =[UIColor yellowColor];
        [self addSubview:view];
        
    }
    return self;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
