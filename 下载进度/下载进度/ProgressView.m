//
//  ProgressView.m
//  下载进度
//
//  Created by 刘明 on 16/7/27.
//  Copyright © 2016年 LM. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView

-(void)setProgressValue:(CGFloat)progressValue
{
    _progressValue = progressValue;
    //重绘
    [self setNeedsDisplay];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    //创建贝塞尔路径
    CGFloat radius = rect.size.width/2;
    CGPoint center = CGPointMake(radius, radius);
    CGFloat end = -M_PI_2 + self.progressValue * M_PI * 2;
    UIBezierPath* path =  [UIBezierPath bezierPathWithArcCenter:center radius:radius-2 startAngle:-M_PI_2 endAngle:end clockwise:YES];
    [path stroke];
}


@end
