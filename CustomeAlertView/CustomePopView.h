//
//  CustomePopView.h
//  StudentManagement
//
//  Created by Kitty on 17/2/23.
//  Copyright © 2017年 Kitty. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^AlertResult)(NSInteger index);

@interface CustomePopView : UIView

/**  */
@property(nonatomic,copy) AlertResult resultIndex;

@property(nonatomic,strong) NSArray *dataArray;

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message sureBtn:(NSString *)sureTitle cancleBtn:(NSString *)cancleTitle;

- (void)addTextFieldWithConfigurationHandler:(void (^)(UITextField *textField))configurationHandler;

- (void)addCollectionViewWithConfigurationHandler:(void (^)(UICollectionView *collectionView))configurationHandler;

-(void)showPopView;

@end
