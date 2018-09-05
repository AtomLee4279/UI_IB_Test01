//
//  ViewController.m
//  UI_IB_Test01
//
//  Created by 李一贤 on 2018/7/30.
//  Copyright © 2018年 李一贤. All rights reserved.
//

#import "ViewController.h"
#import "RedViewController.h"
#import "BlueViewController.h"

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
    [userVC setModalTransitionStyle:(UIModalTransitionStyleFlipHorizontal)];

    [self presentViewController:userVC animated:YES completion:nil];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"orginalVCSegue"]) {
        if ([segue.destinationViewController isKindOfClass:[RedViewController class]]&&[segue.sourceViewController isKindOfClass:[ViewController class]]) {
            RedViewController *redVC = segue.destinationViewController;
            UILabel *label = [[UILabel alloc] init];
            label.text = @"rrr";
            redVC.redVCLabel = label;
          
            
        }
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backToThisSb:(UIStoryboardSegue*)unwindSegue {
    UIStoryboard *user = [UIStoryboard storyboardWithName:@"User" bundle:nil];
    UIViewController *userVC = [user instantiateViewControllerWithIdentifier:@"UserViewController"];
    [self setModalTransitionStyle:(UIModalTransitionStyleFlipHorizontal)];
    //    [userVC setModalTransitionStyle:(UIModalTransitionStyleFlipHorizontal)];
    
    [self presentViewController:userVC animated:YES completion:nil];
}

@end
