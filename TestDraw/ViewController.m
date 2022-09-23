//
//  ViewController.m
//  TestDraw
//
//  Created by Wang, Kai on 2022/9/23.
//

#import "ViewController.h"
#import "OverView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    OverView* view = [[OverView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];
    // Do any additional setup after loading the view.
}


@end
