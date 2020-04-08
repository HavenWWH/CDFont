//
//  CDDeviceUtils.h
//  FT_iPhone
//
//  Created by cqz on 2018/10/31.
//  Copyright © 2018 ChangDao. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CDDeviceUtils : NSObject

+ (BOOL)isIPad;
+ (BOOL)isIPod;
+ (BOOL)isIPhone;
+ (BOOL)isSimulator;

+ (BOOL)is35InchScreen;
+ (BOOL)is40InchScreen;
+ (BOOL)is47InchScreen;
+ (BOOL)is55InchScreen;
+ (BOOL)is58InchScreen;
+ (BOOL)is61InchScreen;
+ (BOOL)is65InchScreen;



/// iPhone 4
+ (CGSize)screenSizeFor35Inch;

/// iPhone 5
+ (CGSize)screenSizeFor40Inch;

/// iPhone 8
+ (CGSize)screenSizeFor47Inch;

/// iPhone 8 Plus
+ (CGSize)screenSizeFor55Inch;

// iPhone X / XS / 11Pro 1125px × 2436px
+ (CGSize)screenSizeFor58Inch;

//iPhone XR / 11  828px × 1792px
+ (CGSize)screenSizeFor61Inch;
//iPhone XS Max / 11 Pro Max  1242px × 2688px
+ (CGSize)screenSizeFor65Inch;

@end

