//
//  MPProgressHUD.h
//  MMProgress
//
//  Created by MicroSoft on 13/3/16.
//  Copyright © 2016年 Huangbaoan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MPProgressHUD.h"

IB_DESIGNABLE

typedef NS_ENUM(NSInteger,MPProgressMode) {
    
    MPProgressModeRegular,//For Loading data
    MPProgressModeRegularAndLable,//For Loading data And Display Detail lable
    MPProgressModeProgress,//Specify Progress
    MPProgressModeProgressAndLable,//Specify Progress And Display Detail lable
    MPProgressModeDone,// display a Done Button.
    MPProgressModeSecced,// display A Secced Button And hiden after 3 sec.
    MPProgressModeFaild,// display A Failed Button And hiden after 3 sec.
    MPProgressModeCancal// display A Failed Button And hiden after 3 sec.
};

@interface MPProgressHUD : UIView

@property (strong, nonatomic) UIVisualEffectView* bgView;

@property (nonatomic) IBInspectable float progress;
@property (strong, nonatomic) IBInspectable NSString* detail;

+ (instancetype) showToView:(UIView*)view Animation:(BOOL)enable Mode:(MPProgressMode)mode;

-(void) hide:(BOOL) animation afterDelay:(NSTimeInterval)time;

@end
