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
    [self.navigationController setNavigationBarHidden:YES];
    // Do any additional setup after loading the view, typically from a nib.
   
    
}
//storyboard->storyboard
- (IBAction)sbToSb:(id)sender {
    //1.使用Modal的方式展示，将销毁掉现有的navigate
//    UIStoryboard *user = [UIStoryboard storyboardWithName:@"User" bundle:nil];
//    UIViewController *userVC = [user instantiateViewControllerWithIdentifier:@"UserViewController"];
//    [userVC setModalTransitionStyle:(UIModalTransitionStyleFlipHorizontal)];
//
//    [self presentViewController:userVC animated:YES completion:nil];
    
    //2.使用push的方式，将保留navigate
    UIStoryboard *user = [UIStoryboard storyboardWithName:@"User" bundle:nil];
    UIViewController *userVC = [user instantiateViewControllerWithIdentifier:@"UserViewController"];
    [self.navigationController pushViewController:userVC
                                         animated:YES];
}

//在segue跳转到红色vc前，设置目标vc的成员属性，传过去
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"orginalVCSegue"]) {
        if ([segue.destinationViewController isKindOfClass:[RedViewController class]]&&[segue.sourceViewController isKindOfClass:[ViewController class]]) {
            
            RedViewController *redVC = segue.destinationViewController;
//            NSString *tmp = @"rrr";
//            [redVC setValue:tmp forKey:@"orginValue"];
//            UILabel *label = [[UILabel alloc] init];
//            label.text = @"rrr";
            redVC.redLabel.text = @"rrr";
            NSLog(@"prepareForSegue:redVc%@,redLabel%@",redVC,redVC.redLabel);
            
            
            
        }
    }
    
}


- (IBAction)goToBlue:(id)sender {
    
    [self performSegueWithIdentifier:@"goToBlue" sender:sender];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//BlueVC使用segue回退到VC将调用此方法
- (IBAction)backToThisSb:(UIStoryboardSegue*)unwindSegue {
   // UIStoryboard *user = [UIStoryboard storyboardWithName:@"User" bundle:nil];
    //UIViewController *userVC = [user instantiateViewControllerWithIdentifier:@"UserViewController"];
    //[self setModalTransitionStyle:(UIModalTransitionStyleFlipHorizontal)];
    //    [userVC setModalTransitionStyle:(UIModalTransitionStyleFlipHorizontal)];
    
   // [self presentViewController:userVC animated:YES completion:nil];
    
    
}


@end
