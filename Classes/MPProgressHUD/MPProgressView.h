//
//  MPProgressView.h
//  MMProgress
//
//  Created by MicroSoft on 13/3/16.
//  Copyright © 2016年 Huangbaoan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>

IB_DESIGNABLE

@interface MPProgressView : UIView

@property (strong, nonatomic) CAShapeLayer* progressLayer;
@property (nonatomic) BOOL AnimationEnable;

@property (nonatomic) IBInspectable float progress;

-(instancetype)initWithFrame:(CGRect)frame AnimationEnable:(BOOL)enable Progress:(float)progress;

@end
