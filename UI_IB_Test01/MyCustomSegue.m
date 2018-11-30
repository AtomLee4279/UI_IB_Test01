//
//  MyCustomSegue.m
//  UI_IB_Test01
//
//  Created by 李一贤 on 2018/11/30.
//  Copyright © 2018 李一贤. All rights reserved.
//自定义segue，需要继承UIStoryboardSegue类，然后重写Perform方法,然后在Storyboard上将类设置为自定义的类。

#import "MyCustomSegue.h"

@implementation MyCustomSegue

//这段代码的作用是创建从中心渐变充满屏幕的动画:
-(void)perform{
    
    UIViewController * svc = self.sourceViewController;
    UIViewController * dvc = self.destinationViewController;
//    [svc.view addSubview:dvc.view];
    [svc.navigationController pushViewController:dvc animated:NO];
    [dvc.view setFrame:svc.view.frame];
    [dvc.view setTransform:CGAffineTransformMakeScale(0.5, 0.5)];
    [dvc.view setAlpha:0.0];
    [UIView animateWithDuration:1.0
                     animations:^{
                         [dvc.view setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
                         [dvc.view setAlpha:1.0];
                     }
                     completion:^(BOOL finished) {
//                         [svc presentViewController:dvc animated:NO completion:nil];
                         
                     }];
    
}

@end
