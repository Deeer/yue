//
//  BtnView.h
//  project_yue2
//
//  Created by Dee on 15/6/3.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol btnViewDelegate <NSObject>

-(void)changeViewControllerWithTag:(int)tag;

@end

@interface BtnView : UIView

@property(nonatomic ,retain)id<btnViewDelegate>delegate;

@end
