//
//  ViewController.m
//  AlphaTouch
//
//  Created by Christian Kuepper on 31/03/14.
//  Copyright (c) 2014 Christian Kuepper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //self.greenButton = [UIButton buttonWithType:<#(UIButtonType)#>];
    CGRect frame = CGRectMake(120, 200, 100, 44);
    self.greenButton = [[UIButton alloc] initWithFrame:frame];
    [self.greenButton setTitle:@"Make green!" forState:UIControlStateNormal];
    [_greenButton addTarget:self action:@selector(changeBackgroundColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.greenButton setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:self.greenButton];
    
    
    UIButton *blueButton = [UIButton buttonWithType:UIButtonTypeSystem];
    blueButton.frame = CGRectMake(120, 100, 100, 44);
    [blueButton setTitle:@"Make blue!" forState:UIControlStateNormal];
    [blueButton addTarget:self action:@selector(changeBackgroundColor:) forControlEvents:UIControlEventTouchUpInside];
    [blueButton setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:blueButton];
    
}

- (void) changeBackgroundColor:(UIButton *) sender
{
    if ([sender.titleLabel.text isEqualToString:@"Make green!"]) {
        self.view.backgroundColor = [UIColor greenColor];
    }else {
        self.view.backgroundColor = [UIColor blueColor];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
