//
//  AppDelegate.m
//  LoginAndRegist
//
//  Created by 纵昂 on 2021/5/1.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// 程序启动完成调用
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self AFNetworkStatus];
    // 创建Window
      self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
      // 设置Window的背景颜色
      self.window.backgroundColor = [UIColor whiteColor];
    // 设置根控制器
    ViewController *baseView = [[ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:baseView];
    self.window.rootViewController = nav;

      // 设置并显示主窗口
      [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)AFNetworkStatus{
 
    //1.创建网络监测者
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
 
    /*枚举里面四个状态  分别对应 未知 无网络 数据 WiFi
     typedef NS_ENUM(NSInteger, AFNetworkReachabilityStatus) {
         AFNetworkReachabilityStatusUnknown          = -1,      未知
         AFNetworkReachabilityStatusNotReachable     = 0,       无网络
         AFNetworkReachabilityStatusReachableViaWWAN = 1,       蜂窝数据网络
         AFNetworkReachabilityStatusReachableViaWiFi = 2,       WiFi
     };
     */
 
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                NSLog(@"未知网络状态");
                break;
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"无网络");
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"蜂窝数据网");
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"WiFi网络");
                break;
            default:
                break;
        }
    }] ;
}




@end
