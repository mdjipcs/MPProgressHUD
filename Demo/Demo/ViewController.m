//
//  ViewController.m
//  Demo
//
//  Created by MicroSoft on 15/3/16.
//  Copyright © 2016年 Huangbaoan. All rights reserved.
//

#import "ViewController.h"
#import "Classes/MPProgressHUD.h"
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
- (IBAction)showRegularMode:(UIButton *)sender {
    
    MPProgressHUD* hud = [MPProgressHUD
                          showToView:self.view
                          Animation:YES
                          Mode:MPProgressModeRegular];
    
    [hud hide:NO afterDelay:50];
}

@end
