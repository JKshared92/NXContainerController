//
//  SecondViewController.m
//  NXContainerControllerDemo
//
//  Created by 蒋瞿风 on 16/3/11.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showVC:(UIButton *)sender{
    if ([sender.titleLabel.text isEqualToString: @"Present"]) {
        [[AppDelegate sharedDelegate].containerController showViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"] withAnimationType:AnimationTransitionPresent duration:0.5 completion:^(UIViewController * _Nonnull controller) {
            
        }];
        return;
    }
    
    if ([sender.titleLabel.text isEqualToString:@"Dismiss"]) {
        [[AppDelegate sharedDelegate].containerController showViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"] withAnimationType:AnimationTransitionDismiss duration:0.5 completion:^(UIViewController * _Nonnull controller) {
            
        }];
        return;
    }
}

@end
