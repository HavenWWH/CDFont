//
//  CDDeviceUtils.m
//  FT_iPhone
//
//  Created by cqz on 2018/10/31.
//  Copyright © 2018 ChangDao. All rights reserved.
//

#import "CDDeviceUtils.h"
#import <objc/runtime.h>
#import <sys/utsname.h>

// 是否横竖屏
// 用户界面横屏了才会返回YES
#define CDIS_LANDSCAPE UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])

// 屏幕宽度，跟横竖屏无关
#define CDDEVICE_WIDTH (CDIS_LANDSCAPE ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)

@implementation CDDeviceUtils

static NSInteger is35InchScreen = -1;
+ (BOOL)is35InchScreen {
    if (is35InchScreen < 0) {
        is35InchScreen = (CDDEVICE_WIDTH == self.screenSizeFor35Inch.width && CDDEVICE_WIDTH == self.screenSizeFor35Inch.height) ? 1 : 0;
    }
    return is35InchScreen > 0;
}

static NSInteger is40InchScreen = -1;
+ (BOOL)is40InchScreen {
    if (is40InchScreen < 0) {
        is40InchScreen = (CDDEVICE_WIDTH == self.screenSizeFor40Inch.width && CDDEVICE_WIDTH == self.screenSizeFor40Inch.height) ? 1 : 0;
    }
    return is40InchScreen > 0;
}

static NSInteger is47InchScreen = -1;
+ (BOOL)is47InchScreen {
    if (is47InchScreen < 0) {
        is47InchScreen = (CDDEVICE_WIDTH == self.screenSizeFor47Inch.width && CDDEVICE_WIDTH == self.screenSizeFor47Inch.height) ? 1 : 0;
    }
    return is47InchScreen > 0;
}

static NSInteger is55InchScreen = -1;
+ (BOOL)is55InchScreen {
    if (is55InchScreen < 0) {
        is55InchScreen = (CDDEVICE_WIDTH == self.screenSizeFor55Inch.width && CDDEVICE_WIDTH == self.screenSizeFor55Inch.height) ? 1 : 0;
    }
    return is55InchScreen > 0;
}

static NSInteger is58InchScreen = -1;
+ (BOOL)is58InchScreen {
    if (is58InchScreen < 0) {
        // Both iPhone XS and iPhone X share the same actual screen sizes, so no need to compare identifiers
        // iPhone XS 和 iPhone X 的物理尺寸是一致的，因此无需比较机器 Identifier
        is58InchScreen = (CDDEVICE_WIDTH == self.screenSizeFor58Inch.width && CDDEVICE_WIDTH == self.screenSizeFor58Inch.height) ? 1 : 0;
    }
    return is58InchScreen > 0;
}

static NSInteger is61InchScreen = -1;
+ (BOOL)is61InchScreen {
    if (is61InchScreen < 0) {
        is61InchScreen = (CDDEVICE_WIDTH == self.screenSizeFor61Inch.width && CDDEVICE_WIDTH == self.screenSizeFor61Inch.height && [[CDDeviceUtils deviceModel] isEqualToString:@"iPhone11,8"]) ? 1 : 0;
    }
    return is61InchScreen > 0;
}

static NSInteger is65InchScreen = -1;
+ (BOOL)is65InchScreen {
    if (is65InchScreen < 0) {
        // Since iPhone XS Max and iPhone XR share the same resolution, we have to distinguish them using the model identifiers
        // 由于 iPhone XS Max 和 iPhone XR 的屏幕宽高是一致的，我们通过机器 Identifier 加以区别
        is65InchScreen = (CDDEVICE_WIDTH == self.screenSizeFor65Inch.width && CDDEVICE_WIDTH == self.screenSizeFor65Inch.height && ([[CDDeviceUtils deviceModel] isEqualToString:@"iPhone11,4"] || [[CDDeviceUtils deviceModel] isEqualToString:@"iPhone11,6"])) ? 1 : 0;
    }
    return is65InchScreen > 0;
}



+ (CGSize)screenSizeFor35Inch {
    return CGSizeMake(320, 480);
}

+ (CGSize)screenSizeFor40Inch {
    return CGSizeMake(320, 568);
}

+ (CGSize)screenSizeFor47Inch {
    return CGSizeMake(375, 667);
}

+ (CGSize)screenSizeFor55Inch {
    return CGSizeMake(414, 736);
}

+ (CGSize)screenSizeFor58Inch {
    return CGSizeMake(375, 812);
}

+ (CGSize)screenSizeFor61Inch {
    return CGSizeMake(375, 896);
}

+ (CGSize)screenSizeFor65Inch {
    return CGSizeMake(414, 896);
}

    
    
    
    
    
+ (NSString *)deviceModel {
    if ([CDDeviceUtils isSimulator]) {
        // Simulator doesn't return the identifier for the actual physical model, but returns it as an environment variable
        // 模拟器不返回物理机器信息，但会通过环境变量的方式返回
        return [NSString stringWithFormat:@"%s", getenv("SIMULATOR_MODEL_IDENTIFIER")];
    }
    
    // See https://www.theiphonewiki.com/wiki/Models for identifiers
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

    
static NSInteger isSimulator = -1;
+ (BOOL)isSimulator {
    if (isSimulator < 0) {
#if TARGET_OS_SIMULATOR
        isSimulator = 1;
#else
        isSimulator = 0;
#endif
    }
    return isSimulator > 0;
}

@end
