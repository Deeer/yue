//
//  ViewController.m
//  project_yue2
//
//  Created by Dee on 15/6/3.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "ViewFactory.h"
#import "UIColor+randomColour.h"
#import "BtnView.h"
#import "PersonalController.h"
#import "YueViewController.h"
#import "MessageController.h"
#define viewBtnCount 3
#define viewBtnH self.view.frame.size.height/viewBtnCount
#define viewBtnW self.view.frame.size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *viewArr= [ViewFactory viewWithCount:viewBtnCount];
    for (int i=0 ; i<viewBtnCount;i++) {
       
        BtnView *view =viewArr[i];
        view.delegate=self;
        view.frame =CGRectMake(0,i*viewBtnH ,viewBtnW,viewBtnH);
        view.backgroundColor =[UIColor randomColor];
        [self.view addSubview:view];

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma btnViewDelegate

-(void)changeViewControllerWithTag:(int)tag
{
    if (tag==0) {
        
        YueViewController *controller=[[YueViewController alloc]init];
        [self presentViewController:controller animated:YES completion:^{
            
        }];
        
        
    }else if(tag ==1)
    {
        MessageController *messageController=[[MessageController alloc]init];
        messageController.modalTransitionStyle =UIModalTransitionStyleCrossDissolve;
        [self presentViewController:messageController animated:YES completion:nil];
    
        
    }else{
        
        PersonalController *personnalController=[[PersonalController alloc]init];
        personnalController.modalTransitionStyle =UIModalTransitionStyleCrossDissolve;
        [self presentViewController:personnalController  animated:YES completion:nil];
        
    }
        
  
    
    
    
    
}

@end
