# MPProgressHUD

`Beautful` `Easy Use` `Free` `http://developer.wangmeng.love` 


Copyright (c) 2016 Huangbaoan.

Everyone is permitted to copy and distribute verbatim copies of this license document(https://github.com/mdjipcs/MPProgressHUD/blob/master/LICENSE), but changing it is not allowed.



#Usege

##RugularMode

```objective-c

#import "MPProgressHUD.h"

- (IBAction)presendProgressView:(UIButton *)sender {
    
    MPProgressHUD* hud = [MPProgressHUD
                         showToView:self.view
                          Animation:YES
                               Mode:MPProgressModeRegular];
    
    [hud hide:NO afterDelay:50];  
}
```
###RegularMode Look Like.
![image](https://github.com/mdjipcs/MPProgressHUD/blob/master/snakShot.png)

`Other Mode Update Soon.!!!`