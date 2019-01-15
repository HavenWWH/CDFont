//
//  CDFontUtils.m
//  FT_iPhone
//
//  Created by cqz on 2018/10/31.
//  Copyright © 2018 ChangDao. All rights reserved.
//

#import "CDFontUtils.h"
#import <objc/runtime.h>

NSUInteger const CDFontTag = 7101746;

//不用版本使用不同字体
UIFont * PingFangFontMediumSize(CGFloat size) {
    
    //    if (IOS_VERSION >= 9.0) // PingFangSC-Regular
    //        return [UIFont fontWithName:@"PingFang-SC-Medium" size:size];
    //    NSString *fontPath = [MYBUNDLE pathForResource:@"DFGB_Y7" ofType:@"ttc"];
    //    return [CDAppUtils customFontPath:fontPath fontSize:size];
    return [UIFont systemFontOfSize:size];//[UIFont fontWithName:@"DFPYuanW7-GB" size:size];
}

UIFont * PingFangFontBoldSize(CGFloat size) {
    
    //    if (IOS_VERSION >= 9.0)
    //        return [UIFont fontWithName:@"PingFangSC-Semibold" size:size];
    
    //    NSString *fontPath = [MYBUNDLE pathForResource:@"DFGB_Y9" ofType:@"ttc"];
    //    return [CDAppUtils customFontPath:fontPath fontSize:size];
    return [UIFont boldSystemFontOfSize:size];//[UIFont fontWithName:@"DFPYuanW9-GB" size:size];
}



UIFont * SystemFont(BOOL isBold,
                    CGFloat inch_3_5,
                    CGFloat inch_4_0,
                    CGFloat inch_4_7,
                    CGFloat inch_5_5,
                    CGFloat inch_5_8,
                    CGFloat inch_6_1,
                    CGFloat inch_6_5) {
    if (CDIS_35INCH_SCREEN) {
        
        return isBold ? PingFangFontBoldSize(inch_3_5) : PingFangFontMediumSize(inch_3_5);
    }
    if (CDIS_40INCH_SCREEN) {
        
        return isBold ? PingFangFontBoldSize(inch_4_0) : PingFangFontMediumSize(inch_4_0);
    }
    if (CDIS_47INCH_SCREEN) {
        
        return isBold ? PingFangFontBoldSize(inch_4_7) :  PingFangFontMediumSize(inch_4_7);
    }
    if (CDIS_55INCH_SCREEN) {
        
        return isBold ? PingFangFontBoldSize(inch_5_5) :  PingFangFontMediumSize(inch_5_5);
    }
    if (CDIS_58INCH_SCREEN) {
        
        return isBold ? PingFangFontBoldSize(inch_5_8) :  PingFangFontMediumSize(inch_5_8);
    }
    if (CDIS_61INCH_SCREEN) {
        
        return isBold ? PingFangFontBoldSize(inch_6_1) :  PingFangFontMediumSize(inch_6_1);
    }
    if (CDIS_65INCH_SCREEN) {
        
        return isBold ? PingFangFontBoldSize(inch_6_5) :  PingFangFontMediumSize(inch_6_5);
    }
    
    return isBold ? PingFangFontBoldSize(inch_4_7) :  PingFangFontMediumSize(inch_4_7);
}



//使用常规字体
UIFont * CDNormalSystemFont(CGFloat inch_3_5,
                            CGFloat inch_4_0,
                            CGFloat inch_4_7,
                            CGFloat inch_5_5,
                            CGFloat inch_5_8,
                            CGFloat inch_6_1,
                            CGFloat inch_6_5) {
    return SystemFont(NO, inch_3_5, inch_4_0, inch_4_7, inch_5_5, inch_5_8, inch_6_1, inch_6_5);
}

//使用加粗体
UIFont * CDBoldSystemFont(CGFloat inch_3_5,
                          CGFloat inch_4_0,
                          CGFloat inch_4_7,
                          CGFloat inch_5_5,
                          CGFloat inch_5_8,
                          CGFloat inch_6_1,
                          CGFloat inch_6_5) {
    return SystemFont(YES, inch_3_5, inch_4_0, inch_4_7, inch_5_5, inch_5_8, inch_6_1, inch_6_5);
}
