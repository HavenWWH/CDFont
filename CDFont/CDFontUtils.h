//
//  CDFontUtils.h
//  FT_iPhone
//
//  Created by cqz on 2018/10/31.
//  Copyright © 2018 ChangDao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDDeviceUtils.h"

// 设备屏幕尺寸
// 3.5寸  iPhone 4s
#define CDIS_35INCH_SCREEN [CDDeviceUtils is35InchScreen]
// 4.0寸  iPhone 5
#define CDIS_40INCH_SCREEN [CDDeviceUtils is40InchScreen]
// 4.7寸 iPhone 6
#define CDIS_47INCH_SCREEN [CDDeviceUtils is47InchScreen]
// 5.5寸 iPhone 6p
#define CDIS_55INCH_SCREEN [CDDeviceUtils is55InchScreen]
// 5.8寸 iPhone X iPhone XS
#define CDIS_58INCH_SCREEN [CDDeviceUtils is58InchScreen]
// 6.1寸 iPhone XR
#define CDIS_61INCH_SCREEN [CDDeviceUtils is61InchScreen]
// 6.5寸 iPhone XS Max
#define CDIS_65INCH_SCREEN [CDDeviceUtils is65InchScreen]

//当使用xib时候，如果不想根据屏幕改变字体大小就设置tag为
FOUNDATION_EXPORT NSUInteger const CDFontTag;

/**
 *  正常系统字体
 */
FOUNDATION_EXTERN UIFont * CDNormalSystemFont(CGFloat inch_3_5,
                                              CGFloat inch_4_0,
                                              CGFloat inch_4_7,
                                              CGFloat inch_5_5,
                                              CGFloat inch_5_8,
                                              CGFloat inch_6_1,
                                              CGFloat inch_6_5);

/**
 *  粗体
 */
FOUNDATION_EXTERN UIFont * CDBoldSystemFont(CGFloat inch_3_5,
                                            CGFloat inch_4_0,
                                            CGFloat inch_4_7,
                                            CGFloat inch_5_5,
                                            CGFloat inch_5_8,
                                            CGFloat inch_6_1,
                                            CGFloat inch_6_5);

#define CDUIFontMake(font)           CDNormalSystemFont((font - 1), (font - 1), font, (font + 1), font, font, (font + 1))
#define CDUIFontBoldMake(font)       CDBoldSystemFont((font - 1), (font - 1), font, (font + 1), font, font, (font + 1))
