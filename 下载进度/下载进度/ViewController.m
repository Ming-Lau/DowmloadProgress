//
//  ViewController.m
//  下载进度
//
//  Created by 刘明 on 16/7/27.
//  Copyright © 2016年 LM. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *progressValue;
@property (weak, nonatomic) IBOutlet ProgressView *progressView;
@property (weak, nonatomic) IBOutlet UIProgressView *downloadValue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeValue:(UISlider *)sender {
    self.progressValue.text = [NSString stringWithFormat:@"%.2f%%",sender.value * 100];
    self.downloadValue.progress = sender.value;
    self.progressView.progressValue = sender.value;
}

@end
