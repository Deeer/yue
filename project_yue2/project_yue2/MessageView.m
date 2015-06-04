//
//  MessageView.m
//  project_yue2
//
//  Created by Dee on 15/6/4.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "MessageView.h"

@interface MessageView ()
@property (nonatomic,strong)UIView *view;

@end

@implementation MessageView

-(instancetype)init
{
    if (self = [super init]) {
       
       
       

  
        
    }
    return self;
    
}
-(void)layoutSubviews
{
    
    if (!_view) {
    self.view = [[UIView alloc]init];
    self.view.frame = CGRectMake(self.frame.size.width/3,self.frame.size.height/3, 100, 100);
        
        self.view.backgroundColor =[UIColor purpleColor];
    [self addSubview:self.view];
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
