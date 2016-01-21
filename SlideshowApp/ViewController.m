//
//  ViewController.m
//  SlideshowApp
//
//  Created by Haruka on 2016/01/19.
//  Copyright © 2016年 Haruka.Shida. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIImageView *aImageView;
}
@end

@implementation ViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupBackground];
    [self setButton];
}

-(void) setupBackground{
    aImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    aImageView.image = [UIImage imageNamed:@"image1.JPG"];
    [self.view addSubview:aImageView];
}

-(void) setButton{
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(0,0, 120, 45);
    button1.center = CGPointMake(160, 455);
    [button1 setTitle:@"NEXT" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(gotoNext:)forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];

    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(0, 0, 120, 45);
    button2.center = CGPointMake(160, 510);
    [button2 setTitle:@"BACK" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(goBack:)forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}

-(void) gotoNext:(id)sender{
    aImageView.image = [UIImage imageNamed:@"image1.JPG"];
}
-(void) goBack:(id)sender{
    aImageView.image = [UIImage imageNamed:@"image2.JPG"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
