//
//  BlueViewController.m
//  UI_IB_Test01
//
//  Created by 李一贤 on 2018/9/5.
//  Copyright © 2018年 李一贤. All rights reserved.
//

#import "BlueViewController.h"
#import "ViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)blue_Back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)exit_Segue:(id)sender {
    
    //执行segue跳页的方法
    [self performSegueWithIdentifier:@"fromBlueToOrginVC" sender:nil];
//    [self setModalTransitionStyle:(UIModalTransitionStyleFlipHorizontal)];
}


//尝试在segue跳回orgin_vc前，设置vc切换的展示方式
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"fromBlueToOrginVC"]) {
        if ([segue.destinationViewController isKindOfClass:[ViewController class]]&&[segue.sourceViewController isKindOfClass:[BlueViewController class]]) {
            
//            [segue.destinationViewController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
            
        }
    }
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
