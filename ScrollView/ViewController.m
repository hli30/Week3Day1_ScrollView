//
//  ViewController.m
//  ScrollView
//
//  Created by Harry Li on 2017-06-12.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic) MyScrollView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180,150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.mainView];
    [self.mainView addSubview:redView];
    [self.mainView addSubview:greenView];
    [self.mainView addSubview:blueView];
    [self.mainView addSubview:yellowView];
    
}

@end
