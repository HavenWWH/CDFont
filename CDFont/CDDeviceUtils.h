//
//  CDDeviceUtils.h
//  FT_iPhone
//
//  Created by cqz on 2018/10/31.
//  Copyright © 2018 ChangDao. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CDDeviceUtils : NSObject


+ (BOOL)is35InchScreen;
+ (BOOL)is40InchScreen;
+ (BOOL)is47InchScreen;
+ (BOOL)is55InchScreen;
+ (BOOL)is58InchScreen;
+ (BOOL)is61InchScreen;
+ (BOOL)is65InchScreen;



+ (CGSize)screenSizeFor35Inch;

+ (CGSize)screenSizeFor40Inch;

+ (CGSize)screenSizeFor47Inch;

+ (CGSize)screenSizeFor55Inch;

+ (CGSize)screenSizeFor58Inch;

+ (CGSize)screenSizeFor61Inch;

+ (CGSize)screenSizeFor65Inch;

@end

