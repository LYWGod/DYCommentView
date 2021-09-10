//
//  ViewController.m
//  DYCommentViewDemo
//
//  Created by git on 2021/9/10.
//

#import "ViewController.h"
#import "DYCommentView.h"
#import "GKSlidePopupView.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define ADAPTATIONRATIO     SCREEN_WIDTH / 750.0f

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    DYCommentView *commentView = [DYCommentView new];
    commentView.frame = CGRectMake(0, 0, SCREEN_WIDTH, ADAPTATIONRATIO * 980.0f);
    
    GKSlidePopupView *popupView = [GKSlidePopupView popupViewWithFrame:[UIScreen mainScreen].bounds contentView:commentView];
    [popupView showFrom:[UIApplication sharedApplication].keyWindow completion:^{
        [commentView requestData];
    }];
}

@end
