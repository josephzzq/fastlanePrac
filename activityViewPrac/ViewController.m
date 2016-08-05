//
//  ViewController.m
//  activityViewPrac
//
//  Created by Joseph.Tsai on 2016/3/15.
//  Copyright © 2016年 Joseph.Tsai. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)share:(id)sender {
    
    NSMutableArray *sharingItems = [NSMutableArray new];
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.yahoo.com.tw"]];

    [sharingItems addObject:url];

    UIActivityViewController *activityViewController =
    [[UIActivityViewController alloc] initWithActivityItems:sharingItems
                                      applicationActivities:nil];
    
    [self presentViewController:activityViewController
                                       animated:YES
                     completion:nil];
    
}

@end
