# CustomeAlertView
自定义alertView

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
