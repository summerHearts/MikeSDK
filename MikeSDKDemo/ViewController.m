//
//  ViewController.m
//  MikeSDKDemo
//
//  Created by Kenvin on 17/1/12.
//  Copyright © 2017年 上海方创金融信息服务股份有限公司. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary* URLParams = @{
                                @"page": @"1",
                                @"rows": @"2",
                                @"id": @"1",
                                };
    [HttpSessionRequest  requestWithUrl:@"http://www.tngou.net/api/book/list"
                                 params:URLParams
                               useCache:YES
                            httpMedthod:POST
                          progressBlock:^(int64_t bytesRead, int64_t totalBytes) {
        
    } successBlock:^(id response) {
        
    } failBlock:^(NSError *error) {
        
    }];
    
    
    [self.bgImageView sd_setImageWithURL:[NSURL URLWithString:@"http://s7.sinaimg.cn/bmiddle/4c3b987ax5edd954fe936"] placeholderImage:[UIImage imageNamed:@""] options:SDWebImageProgressiveDownload];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
