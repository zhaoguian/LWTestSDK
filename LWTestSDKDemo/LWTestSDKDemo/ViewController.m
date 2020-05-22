//
//  ViewController.m
//  LWTestSDKDemo
//
//  Created by 赵桂安 on 2020/5/21.
//  Copyright © 2020 赵桂安. All rights reserved.
//

#import "ViewController.h"
#import <LWTestSDK/LWView.h>
#import "LWHomeVC.h"
#import "LWBundleVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    LWView * lwView = [[LWView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:lwView];
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.frame = CGRectMake(0, 94, self.view.frame.size.width/2, 50);
    btn.backgroundColor = [UIColor whiteColor];
    [btn setTitle:@".a包测试" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn1.frame = CGRectMake(self.view.frame.size.width/2, 94, self.view.frame.size.width/2, 50);
    btn1.backgroundColor = [UIColor whiteColor];
    [btn1 setTitle:@"使用.bundel包中xib" forState:(UIControlStateNormal)];
    [btn1 setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn1 addTarget:self action:@selector(clickBtn1) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn1];
    
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"LWTestBundle" ofType:@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithPath:bundlePath];
    // 图片资源
    UIImage *img1 = [UIImage imageNamed:@"gaitubao_timg_png" inBundle:resourceBundle compatibleWithTraitCollection:nil];
//    ///或者使用
//    UIImage *img2 = [UIImage imageNamed:[resourceBundle pathForResource:@"gaitubao_timg_png" ofType:@"png"]];
//    ///或者
//    NSString *imgPath= [bundlePath stringByAppendingPathComponent:@"gaitubao_timg_png.png"];
//    UIImage *image_1=[UIImage imageWithContentsOfFile:imgPath];
    
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 144, self.view.frame.size.width, self.view.frame.size.height - 144)];
    ///图片资源加载
    imgView.image = img1;
    [self.view addSubview:imgView];
    
}

- (void)clickBtn{
    LWHomeVC *homeVC = [LWHomeVC new];
    homeVC.title = @".a包内HomeVC页面";
    homeVC.view.backgroundColor = [UIColor linkColor];
    [self.navigationController pushViewController:homeVC animated:YES];
}

- (void)clickBtn1{
    LWBundleVC *bundleVC = [LWBundleVC new];
    bundleVC.title = @".bundel包内xib页面";
    bundleVC.view.backgroundColor = [UIColor lightGrayColor];
    [self.navigationController pushViewController:bundleVC animated:YES];
}


@end
