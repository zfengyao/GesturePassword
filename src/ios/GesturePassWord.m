//
//  GesturePassWord.m
//  直销银行
//
//  Created by ZD－MacPro on 16/4/11.
//
//

#import "GesturePassWord.h"
#import "GestureViewController.h"
#import "GestureVerifyViewController.h"
#import "PCCircleViewConst.h"

@implementation GesturePassWord

- (void)gesturePasswordSetting:(CDVInvokedUrlCommand *)command{
    NSString *callBackID = command.callbackId;
    long long number = [[command.arguments objectAtIndex:0]longLongValue];
    number +=1;
    CDVPluginResult *result = nil;
    //判断command传过来的数组有值
    if (command.arguments.count) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDouble:number];
        [self showGestureSettingPage];
    }else{
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"出错了！"];
    }
    [self.commandDelegate sendPluginResult:result callbackId:callBackID];
}


- (void)showGestureSettingPage{
    GestureViewController *gestureVc = [[GestureViewController alloc] init];
    gestureVc.type = GestureViewControllerTypeSetting;
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:gestureVc];
    [self.viewController presentViewController:nav animated:YES completion:^{
        
    }];
}
@end
