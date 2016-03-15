//
//  MPProgressHUD.m
//  MMProgress
//
//  Created by MicroSoft on 13/3/16.
//  Copyright © 2016年 Huangbaoan. All rights reserved.
//

#import "MPProgressHUD.h"
#import "MPProgressView.h"


@implementation MPProgressHUD

- (instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        _bgView = [[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
        _bgView.frame = self.frame;
        
        [self addSubview:_bgView];
    }
    
    return self;
}

+(instancetype)showToView:(UIView *)view Animation:(BOOL)enable Mode:(MPProgressMode)mode{
    
    MPProgressHUD *hud = [[self alloc] initWithView:view];
    
    if (mode == MPProgressModeRegular ) {
        
        hud = [self setUpRegularView:hud];
    }
    
    if (enable) {
        [UIView animateWithDuration:2
                              delay:0
             usingSpringWithDamping:12
              initialSpringVelocity:12
                            options:UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             [view addSubview:hud];
                         }
                         completion:^(BOOL finished) {
                             
                         }];
    }else{
      [view addSubview:hud];
        
    }
    return hud;
}


+(id)setUpRegularView:(MPProgressHUD*)hud{
    
    UIView* backG = [[UIView alloc]initWithFrame:CGRectMake(hud.center.x - 34, hud.center.y - 34, 68, 68)];
    [hud addSubview:backG];
    backG.backgroundColor = [UIColor colorWithWhite:0.9 alpha:0.9];
    backG.layer.cornerRadius = 8.0f;
    
    CGRect innaerRect =  CGRectInset(backG.frame, 5, 5);
    MPProgressView* progresView = [[MPProgressView alloc]initWithFrame:innaerRect AnimationEnable:YES Progress:0.9];
    [hud addSubview:progresView];
    return hud;
}


- (id)initWithView:(UIView *)view {
    
    NSAssert(view, @"View must not be nil.");
    return [self initWithFrame:view.bounds];
}

-(void)hide:(BOOL)animation afterDelay:(NSTimeInterval)time{

    if (animation) {
        [UIView animateWithDuration:2 delay:time usingSpringWithDamping:12 initialSpringVelocity:12 options:UIViewAnimationOptionCurveEaseOut animations:^{
            [self removeFromSuperview];
        } completion:^(BOOL finished) {
            
        }];
    }else{
    
        [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(removeSelf) userInfo:nil repeats:NO];
        
    }
}

-(void)removeSelf{
    [self removeFromSuperview];
}

@end
















