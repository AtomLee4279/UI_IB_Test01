//
//  PinkViewController.m
//  UI_IB_Test01
//
//  Created by 李一贤 on 2018/11/30.
//  Copyright © 2018 李一贤. All rights reserved.
//

#import "PinkViewController.h"

@interface PinkViewController ()

@end

@implementation PinkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)back:(id)sender {
    
//    [self removeFromParentViewController];
    [self.view removeFromSuperview];
    
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
