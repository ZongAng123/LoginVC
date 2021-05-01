//
//  ViewController.m
//  LoginAndRegist
//
//  Created by 纵昂 on 2021/5/1.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"登录页";
    self.view.backgroundColor =[UIColor whiteColor];
    
    
    ZATextField * account = [[ZATextField alloc]initWithFrame:CGRectMake(0, 160, SCREEN_SIZE.width, 60)];
    account.placeholder = @"请输入手机号";
    account.maxLength = 11;
    account.errorStr = @"超出字数限制";
    account.leftIconName = @"loginPhone";
    account.textField.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:account];
    
    ZATextField * password = [[ZATextField alloc]initWithFrame:CGRectMake(0, 220, SCREEN_SIZE.width, 60)];
    password.placeholder = @"请输入密码";
    password.maxLength = 6;
    password.errorStr = @"超出字数限制";
    password.leftIconName = @"Key";
    password.textField.keyboardType = UIKeyboardTypeASCIICapable;
    password.textField.secureTextEntry = YES;
    [self.view addSubview:password];
    
    
}

// 退出键盘
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [[UIApplication sharedApplication].keyWindow endEditing:YES];
}

@end
