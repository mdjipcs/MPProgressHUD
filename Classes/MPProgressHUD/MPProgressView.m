//
//  MPProgressView.m
//  MMProgress
//
//  Created by MicroSoft on 13/3/16.
//  Copyright © 2016年 Huangbaoan. All rights reserved.
//

#import "MPProgressView.h"

@implementation MPProgressView

//Initial View

-(instancetype)initWithFrame:(CGRect)frame AnimationEnable:(BOOL)enable Progress:(float)progress{

    if (self = [super initWithFrame:frame]) {
        _AnimationEnable = enable;
        _progress = progress;
    }
    return self;
}

//drawing View

-(void)layoutSubviews{

    [super layoutSubviews];

    float lineW = 3.0f;
    
    CGRect rect = self.bounds;
    
    if (!_progressLayer) {
        _progressLayer = [[CAShapeLayer alloc]init];
        [self.layer addSublayer:_progressLayer];
        _progressLayer.path = [UIBezierPath bezierPathWithOvalInRect:CGRectInset(rect, lineW / 2, lineW / 2)].CGPath;
        _progressLayer.fillColor = nil;
        _progressLayer.lineWidth = lineW;
        //colorWithHue:208.0 / 360.0 saturation:0.51 brightness:0.75 alpha:1
        _progressLayer.strokeColor = [UIColor colorWithHue:208.0 / 360.0 saturation:0.51 brightness:0.75 alpha:1].CGColor;
        _progressLayer.strokeEnd = _progress;
        _progressLayer.strokeStart = 0;
        _progressLayer.lineCap = @"round";
        _progressLayer.anchorPoint = CGPointMake(0.5, 0.5);
        _progressLayer.transform = CATransform3DRotate(_progressLayer.transform, -M_PI/2, 0, 0, 1);
        
    }
    _progressLayer.frame = rect;
    
    if (_AnimationEnable) {
        
        _progress = 0.9;
        [self animationEnable];
    }

}

//enable Animation
-(void)animationEnable{

    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];
    rotationAnimation.duration = 2.0f;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = MAXFLOAT;
    
    [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}


@end








