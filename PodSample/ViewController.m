//
//  ViewController.m
//  PodSample
//
//  Created by ZHU XUELIANG on 17/4/19.
//  Copyright © 2019 iossocket. All rights reserved.
//

#import "ViewController.h"
#import "DemoViewController.h"
#import "DemoService.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DemoService *service = [[DemoService alloc] init];
    NSString *result = [service fetchSthFromDB];
    NSLog(@"%@", result);
}

- (IBAction)showNextPage:(id)sender {
    DemoViewController *vc = [[DemoViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
