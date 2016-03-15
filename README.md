# MPProgressHUD

Copyright (c) 2016 Huangbaoan.
See my website: https://developer.wangmeng.love

License:
Everyone is permitted to copy and distribute verbatim copies of this license document, but changing it is not allowed.

Usege:

	Drap the File in to you project.
	//#import Header
	#import "MPProgressHUD.h"

    //Show Progress View in your setting view if you needs.
    MPProgressHUD* hud = [MPProgressHUD showToView:self.view Animation:YES Mode:MPProgressModeRegular];

    Chose the mode as you wish.

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



	If you want specify the progress pleas set Animation as NO and setter hud.progress = 0.5f(your float)

    //Hiden Progress View and Setting Time.Immediately hiden plese set time as 0.
    [hud hide:NO afterDelay:5];
    
