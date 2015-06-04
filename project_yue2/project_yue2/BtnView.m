//
//  BtnView.m
//  project_yue2
//
//  Created by Dee on 15/6/3.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "BtnView.h"
#import "Header.h"



@implementation BtnView



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    CGRect rect =[[UIScreen mainScreen] bounds];
    
    UIView *superview =self.superview;
    [superview bringSubviewToFront:self];
    
    CGRect temRect =self.frame;
    [BtnView animateWithDuration:.2 animations:^{
       
        
    self.frame = CGRectMake(0,0,rect.size.width,rect.size.height);
     
        
        
    } completion:^(BOOL finished) {
        
    [self.delegate changeViewControllerWithTag:(int)self.tag];
      [BtnView animateWithDuration:0.2 animations:^{
          self.frame =temRect;
      } completion:^(BOOL finished) {
          
      }];
    }];
}

@end
