//
//  CDFontUtils.m
//  FT_iPhone
//
//  Created by cqz on 2018/10/31.
//  Copyright © 2018 ChangDao. All rights reserved.
//

#import "CDFontUtils.h"
#import <CoreText/CoreText.h>
#import <objc/runtime.h>

NSUInteger const CDFontTag = 7101746;

//系统默认使用字体
UIFont * SystemRegularFontSize(CGFloat size) {
    
    return [UIFont systemFontOfSize:size weight:UIFontWeightRegular];
}

UIFont * SystemBoldFontSize(CGFloat size) {
    
    return [UIFont systemFontOfSize:size weight:UIFontWeightSemibold];
//    return [UIFont boldSystemFontOfSize:size];
}

UIFont * SystemMediumFontSize(CGFloat size) {
    
    return [UIFont systemFontOfSize:size weight:UIFontWeightMedium];
}

UIFont * AppSystemFont(BOOL isBold,
                    CGFloat inch_3_5,
                    CGFloat inch_4_0,
                    CGFloat inch_4_7,
                    CGFloat inch_5_5,
                    CGFloat inch_5_8,
                    CGFloat inch_6_1,
                    CGFloat inch_6_5) {
    if (CDIS_35INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_3_5) : SystemRegularFontSize(inch_3_5);
    }
    if (CDIS_40INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_4_0) : SystemRegularFontSize(inch_4_0);
    }
    if (CDIS_47INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_4_7) : SystemRegularFontSize(inch_4_7);
    }
    if (CDIS_55INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_5_5) : SystemRegularFontSize(inch_5_5);
    }
    if (CDIS_58INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_5_8) : SystemRegularFontSize(inch_5_8);
    }
    if (CDIS_61INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_6_1) : SystemRegularFontSize(inch_6_1);
    }
    if (CDIS_65INCH_SCREEN) {
        
        return isBold ? SystemBoldFontSize(inch_6_5) : SystemRegularFontSize(inch_6_5);
    }
    return isBold ? SystemBoldFontSize(inch_4_7) : SystemRegularFontSize(inch_4_7);
}


/*************************************************宏定义字体Function******************************************************************/

/*
 * 系统默认字体
 */
//使用常规字体
UIFont * CDSystemRegularFont(CGFloat inch_3_5,
                            CGFloat inch_4_0,
                            CGFloat inch_4_7,
                            CGFloat inch_5_5,
                            CGFloat inch_5_8,
                            CGFloat inch_6_1,
                            CGFloat inch_6_5) {
    
    return AppSystemFont(NO, inch_3_5, inch_4_0, inch_4_7, inch_5_5, inch_5_8, inch_6_1, inch_6_5);
}

//使用加粗体
UIFont * CDSystemBoldFont(CGFloat inch_3_5,
                          CGFloat inch_4_0,
                          CGFloat inch_4_7,
                          CGFloat inch_5_5,
                          CGFloat inch_5_8,
                          CGFloat inch_6_1,
                          CGFloat inch_6_5) {
    return AppSystemFont(YES, inch_3_5, inch_4_0, inch_4_7, inch_5_5, inch_5_8, inch_6_1, inch_6_5);
}

//使用中粗体
UIFont * CDSystemMediumFont(CGFloat inch_3_5,
                          CGFloat inch_4_0,
                          CGFloat inch_4_7,
                          CGFloat inch_5_5,
                          CGFloat inch_5_8,
                          CGFloat inch_6_1,
                          CGFloat inch_6_5) {
    if (CDIS_35INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_3_5);
    }
    if (CDIS_40INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_4_0);
    }
    if (CDIS_47INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_4_7);
    }
    if (CDIS_55INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_5_5);
    }
    if (CDIS_58INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_5_8);
    }
    if (CDIS_61INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_6_1);
    }
    if (CDIS_65INCH_SCREEN) {
        
        return SystemMediumFontSize(inch_6_5);
    }
    return SystemMediumFontSize(inch_4_7);
}

/*
 * 使用知道名字的字体
 */
//fontName字体
UIFont * CDFontsProvidedByApplication(NSString *fontName,
                          CGFloat inch_3_5,
                          CGFloat inch_4_0,
                          CGFloat inch_4_7,
                          CGFloat inch_5_5,
                          CGFloat inch_5_8,
                          CGFloat inch_6_1,
                          CGFloat inch_6_5) {
    
    CGFloat fontSize = inch_4_7;
    if (CDIS_35INCH_SCREEN) {
        fontSize = inch_3_5;
    }
    if (CDIS_40INCH_SCREEN) {
        fontSize = inch_4_0;
    }
    if (CDIS_47INCH_SCREEN) {
        fontSize = inch_4_7;
    }
    if (CDIS_55INCH_SCREEN) {
        fontSize = inch_5_5;
    }
    if (CDIS_58INCH_SCREEN) {
        fontSize = inch_5_8;
    }
    if (CDIS_61INCH_SCREEN) {
        fontSize = inch_6_1;
    }
    if (CDIS_65INCH_SCREEN) {
        fontSize = inch_6_5;
    }

    return [UIFont fontWithName:fontName size:fontSize];
}




/*
 * 路径字体
 */

//file path 路径字体
UIFont * CDCustomFontFilePath(NSString *filePath,
                              CGFloat inch_3_5,
                              CGFloat inch_4_0,
                              CGFloat inch_4_7,
                              CGFloat inch_5_5,
                              CGFloat inch_5_8,
                              CGFloat inch_6_1,
                              CGFloat inch_6_5) {

    CGFloat fontSize = inch_4_7;
    if (CDIS_35INCH_SCREEN) {
        fontSize = inch_3_5;
    }
    if (CDIS_40INCH_SCREEN) {
        fontSize = inch_4_0;
    }
    if (CDIS_47INCH_SCREEN) {
        fontSize = inch_4_7;
    }
    if (CDIS_55INCH_SCREEN) {
        fontSize = inch_5_5;
    }
    if (CDIS_58INCH_SCREEN) {
        fontSize = inch_5_8;
    }
    if (CDIS_61INCH_SCREEN) {
        fontSize = inch_6_1;
    }
    if (CDIS_65INCH_SCREEN) {
        fontSize = inch_6_5;
    }

    NSURL *fontUrl = [NSURL fileURLWithPath:filePath];
    CGDataProviderRef fontDataProvider = CGDataProviderCreateWithURL((__bridge CFURLRef)fontUrl);
    CGFontRef fontRef = CGFontCreateWithDataProvider(fontDataProvider);
    CGDataProviderRelease(fontDataProvider);
    CTFontManagerRegisterGraphicsFont(fontRef, NULL);
    NSString *fontName = CFBridgingRelease(CGFontCopyPostScriptName(fontRef));
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    CGFontRelease(fontRef);
    return font;
}

