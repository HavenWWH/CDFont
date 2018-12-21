#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "CDDeviceUtils.h"
#import "CDFontUtils.h"
#import "UIButton+Font.h"
#import "UILabel+Font.h"
#import "UITextField+Font.h"

FOUNDATION_EXPORT double CDFontVersionNumber;
FOUNDATION_EXPORT const unsigned char CDFontVersionString[];

