//
//  ViewController.m
//  WPGraphicButton
//
//  Created by 魏鹏 on 2017/4/12.
//  Copyright © 2017年 weipeng. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+GraphicBtn.h"
@interface ViewController ()
@property (nonatomic,strong) UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.btn.frame = CGRectMake(50, 100, 100, 100);
    self.btn.backgroundColor = [UIColor redColor];
    [self.btn setImage:[UIImage imageNamed:@"arrowdown"] forState:(UIControlStateNormal)];
    [self.btn setTitle:@"测试" forState:(UIControlStateNormal)];
    self.btn.titleLabel.font = [UIFont systemFontOfSize:14.0f];
    self.btn.center = self.view.center;
    [self.view addSubview:self.btn];
    
    //    WPGraphicBtnTypeLeft = 0,              //图片在左，文字在右，默认
    //    WPGraphicBtnTypeRight = 1,             //图片在右，文字在左
    //    WPGraphicBtnTypeTop = 2,               //图片在上，文字在下
    //    WPGraphicBtnTypeBottom = 3,            //图片在下，文字在上
    [self.btn setImagePosition:WPGraphicBtnTypeRight spacing:5];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
