//
//  UtilsMacro.h
//  ddd
//
//  Created by lantoo on 15/9/14.
//  Copyright (c) 2015年 雷霰霆. All rights reserved.
//

#ifndef ddd_UtilsMacro_h
#define ddd_UtilsMacro_h

#define WEAKSELF(weakSelf)  __weak __typeof(&*self)weakSelf = self;

//-------------------打印日志-------------------------
//DEBUG  模式下打印日志,当前行
#ifdef DEBUG
//A better version of NSLog
#define DLog(format, ...) do {                                                                          \
fprintf(stderr, "<%s : %d> %s\n",                                           \
[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],  \
__LINE__, __func__);                                                        \
(NSLog)((format), ##__VA_ARGS__);                                           \
fprintf(stderr, "====================================\n");                \
} while (0)
#else
#   define DLog(...)   ((void)0)
#endif

//-------------------打印位置--------------------------
#ifdef DEBUG
#define DLogFrame(frame) NSLog(@"%s frame[X=%.1f,Y=%.1f,W=%.1f,H=%.1f]",__PRETTY_FUNCTION__,frame.origin.x,frame.origin.y,frame.size.width,frame.size.height)
#else
#define DLogFrame(frame) ((void)0)
#endif


#define kDevice_Is_iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define kDevice_Is_iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
#define kDevice_Is_iPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)

#define k_color_home_background [UIColor colorWithRed:253/255.0 green:239/255.0 blue:232/255.0 alpha:1.0] //首页背景

#define k_color_home_inside [UIColor colorWithRed:242/255.0 green:239/255.0 blue:234/255.0 alpha:1.0]

//=================粉红字体========================
#define k_color_pink_font [UIColor colorWithRed:252/255.0 green:34/255.0 blue:105/255.0 alpha:1.0]


//=================粉红按钮==================================
#define k_color_pink_button [UIColor colorWithRed:249.0f/255.0 green:127.0f/255.0 blue:164.0f/255.0 alpha:1.0F]

//=================列表分割线颜色=============================
#define k_color_gray_line [UIColor colorWithRed:221.0f/255.0 green:221/255.0 blue:221/255.0 alpha:1.0F]

#define kDefaultFont [UIFont systemFontOfSize:15.f]
#define kDefaultFontBig [UIFont systemFontOfSize:17.f]
#define kDefaultFontLitter [UIFont systemFontOfSize:13.f]

#define kPaddingLeftWidth 15.0f//默认左边距
#define kPaddingLeftWidthBig 20.0f
#define kMySegmentControl_Height 44.0

#define kScreen_Bounds [UIScreen mainScreen].bounds
#define kScreen_Height [UIScreen mainScreen].bounds.size.height
#define kScreen_Width [UIScreen mainScreen].bounds.size.width

#define kDefaultCorner 5.0 //默认圆角角度
#define kDefaultCornerBig 20.0f

#define kUsersDefaults [NSUserDefaults standardUserDefaults]

//链接颜色
#define kLinkAttributes     @{(__bridge NSString *)kCTUnderlineStyleAttributeName : [NSNumber numberWithBool:NO],(NSString *)kCTForegroundColorAttributeName : (__bridge id)[UIColor colorWithRed:252/255.0 green:34/255.0 blue:105/255.0 alpha:1.0].CGColor}

#define kLinkAttributesActive       @{(NSString *)kCTUnderlineStyleAttributeName : [NSNumber numberWithBool:NO],(NSString *)kCTForegroundColorAttributeName : (__bridge id)[[UIColor colorWithRed:252/255.0 green:34/255.0 blue:105/255.0 alpha:1.0] CGColor]}

#endif
