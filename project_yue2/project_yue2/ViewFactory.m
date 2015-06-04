//
//  ViewFactory.m
//  project_yue2
//
//  Created by Dee on 15/6/3.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewFactory.h"
#import "BtnView.h"
#import "YueView.h"
#import "PersonView.h"
#import "MessageView.h"
#define viewY 300


@interface ViewFactory()


@end

@implementation ViewFactory


+(NSArray *)viewWithCount:(int)count ;
{
    
    NSMutableArray *viewArr =[NSMutableArray array];
    for (int i=0; i<count; i++) {
        if (i == 0) {

        YueView * view  = [[YueView alloc]init];
        
        view.tag = i;
            
            [viewArr addObject:view];
            
        }else if(i == 1)
        {
            MessageView *view =[[MessageView alloc]init];
            view.tag =i;
            [viewArr addObject:view];
        }else{
            PersonView *view =[[PersonView alloc]init];
            view.tag =i;
            [viewArr addObject:view];
        }
    
        
    }
    return viewArr;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
