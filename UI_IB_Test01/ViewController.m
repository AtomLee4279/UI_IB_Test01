//
//  ViewController.m
//  UI_IB_Test01
//
//  Created by 李一贤 on 2018/7/30.
//  Copyright © 2018年 李一贤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *view_width;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}
//storyboard->storyboard
- (IBAction)sbToSb:(id)sender {
    UIStoryboard *user = [UIStoryboard storyboardWithName:@"User" bundle:nil];
    UIViewController *userVC = [user instantiateViewControllerWithIdentifier:@"UserViewController"];
    [self setModalTransitionStyle:(UIModalTransitionStyleFlipHorizontal)];
//    [userVC setModalTransitionStyle:(UIModalTransitionStyleFlipHorizontal)];

    [self presentViewController:userVC animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
