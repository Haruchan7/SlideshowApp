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
    NSInteger countNumber;
}
@end

@implementation ViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    countNumber = 0;
    [self setupBackground];
    [self setButton];
}

-(void) setupBackground{
    aImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    aImageView.image = [UIImage imageNamed:@"IMG_0105.JPG"];
    [self.view addSubview:aImageView];
}

-(void) setButton{
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(0,0, 120, 45);
    button1.center = CGPointMake(160, 455);
    [button1 setTitle:@"NEXT" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(switchImage:)
    forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];

    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(0, 0, 120, 45);
    button2.center = CGPointMake(160, 510);
    [button2 setTitle:@"BACK" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(switchImage:)
    forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];

 }

-(void) switchImage:(id)sender{
    countNumber++;
    if (countNumber==1) {
        aImageView.image = [UIImage imageNamed:@"IMG_0105.JPG"];
    }else if (countNumber==2){
        aImageView.image = [UIImage imageNamed:@"IMG_0107.JPG"];
    }else if (countNumber==3){
        aImageView.image = [UIImage imageNamed:@"IMG_0109.JPG"];
        countNumber = 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
