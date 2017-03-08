//
//  ViewController.m
//  CustomeAlertView
//
//  Created by Kitty on 17/3/8.
//  Copyright © 2017年 Kitty. All rights reserved.
//

#import "ViewController.h"
#import "CustomePopView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)TapClick1:(id)sender {
    
    CustomePopView *alertView = [[CustomePopView alloc]initWithTitle:@"删除" message:@"确定从“语文“目录中删除这几张图片及其批注？" sureBtn:@"删除" cancleBtn:@"取消"];
    alertView.resultIndex = ^(NSInteger index)
    {
        // 回调 -- 处理
        NSLog(@"%s",__func__);
        
        
    };
    [alertView showPopView];
}
- (IBAction)TapClick2:(id)sender {
    
    CustomePopView *alertView = [[CustomePopView alloc]initWithTitle:@"另存为重命名" message:nil sureBtn:@"确定" cancleBtn:@"取消"];
    alertView.resultIndex = ^(NSInteger index)
    {
        // 回调 -- 处理
        NSLog(@"%s",__func__);
        
        
    };
    [alertView addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"请输入名称";
    }];
    [alertView showPopView];
}
- (IBAction)TapClick3:(id)sender {
    
    CustomePopView *alertView = [[CustomePopView alloc]initWithTitle:@"批注" message:@"宋词是中国股改文学皇冠上光辉夺目的一颗巨钻，在古代文学的梁源里，她是一块芬芳绚丽的园圃。。她以姹紫嫣红、千姿百态的丰神，与唐诗争奇，与元曲斗妍，历来与唐诗并..." sureBtn:@"关闭" cancleBtn:nil];
    alertView.resultIndex = ^(NSInteger index)
    {
        // 回调 -- 处理
        NSLog(@"%s",__func__);
        
        
    };
    
    NSArray *array = @[@"1",@"2",@"3",@"4",@"5"];
    alertView.dataArray = array;
    [alertView addCollectionViewWithConfigurationHandler:^(UICollectionView *collectionView) {
        
    }];
    
    [alertView showPopView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
