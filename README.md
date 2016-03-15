# MPProgressHUD

`Beautful` `Easy Use` `Free` `http://developer.wangmeng.love` 


Copyright (c) 2016 Huangbaoan.

Everyone is permitted to copy and distribute verbatim copies of this license document(https://github.com/mdjipcs/MPProgressHUD/blob/master/LICENSE), but changing it is not allowed.

![image](https://github.com/mdjipcs/MPProgressHUD/blob/master/snakShot.png)

#Usege

```objective-c

	#import "MPProgressHUD.h"

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

	- (IBAction)presendProgressView:(UIButton *)sender {
    
    MPProgressHUD* hud = [MPProgressHUD
                          showToView:self.view
                          Animation:YES
                          Mode:MPProgressModeRegular];
    
    [hud hide:NO afterDelay:50];
    
}