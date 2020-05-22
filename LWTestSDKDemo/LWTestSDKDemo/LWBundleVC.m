//
//  LWBundleVC.m
//  LWTestSDKDemo
//
//  Created by 赵桂安 on 2020/5/22.
//  Copyright © 2020 赵桂安. All rights reserved.
//

#import "LWBundleVC.h"

@interface LWBundleVC ()

@end

@implementation LWBundleVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // nib资源
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"LWTestBundle" ofType:@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithPath:bundlePath];
    UIView *view = [[resourceBundle loadNibNamed:@"LWBundleView" owner:self options:nil]objectAtIndex:0];
    [self.view addSubview:view];
    
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
