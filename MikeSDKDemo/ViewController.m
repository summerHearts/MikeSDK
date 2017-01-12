//
//  ViewController.m
//  MikeSDKDemo
//
//  Created by Kenvin on 17/1/12.
//  Copyright © 2017年 上海方创金融信息服务股份有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict = @{@"page":@"2",
                           @"rows":@"2",
                           @"id":@"1",};
    
    [HttpSessionRequest  requestWithUrl:@"http://www.tngou.net/api/book/list"
                                 params:dict
                               useCache:YES
                            httpMedthod:POST
                          progressBlock:^(int64_t bytesRead, int64_t totalBytes) {
        
    } successBlock:^(id response) {
        
    } failBlock:^(NSError *error) {
        
    }];

    
    // Do any additional setup after loading the view, typically from a nib.
}

@end
