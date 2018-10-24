//
//  RedViewController.m
//  UI_IB_Test01
//
//  Created by 李一贤 on 2018/9/5.
//  Copyright © 2018年 李一贤. All rights reserved.
//

#import "RedViewController.h"

@interface RedViewController ()



@end

@implementation RedViewController

//@synthesize redVCLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"RedViewController:viewDidLoad%@,redLabel%@",self,_redLabel);
//    _redLabel.text = self.orginValue;
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//#pragma mark -getter
//- (UILabel*)redVCLabel{
//    if (_redVCLabel == nil) {
//        _redVCLabel = [[UILabel alloc] init];
//    }
//    [self.view addSubview:_redVCLabel];
//    return _redVCLabel;
//}

#pragma mark -getter && setter
//- (void)setRedVCLabel:(UILabel *)redVCLabel{
//    if (_redVCLabel==nil) {
//        _redVCLabel = [[UILabel alloc] init];
//    }
////    [self.view addSubview:_redVCLabel];
//    _redVCLabel = redVCLabel;
//    _redVCLabel.text = redVCLabel.text;
//    
//}




@end
