//
//  ViewController.m
//  TV
//
//  Created by Mr on 2017/7/19.
//  Copyright © 2017年 mrjyuhongjiang. All rights reserved.
//

#import "ViewController.h"
#import <TvRemote/RemoteReceiver.h>


@interface ViewController ()<RemoteReceiverDelegate>

@property (nonatomic, strong) RemoteReceiver *remoteReceiver;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.remoteReceiver = [[RemoteReceiver alloc] init];
    self.remoteReceiver.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) didReceiveMessage:(NSDictionary *)userInfo{
    NSLog(@"%@",userInfo);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
