//
//  UITextField+Font.m
//  CDProgramme
//
//  Created by 庆中 on 2018/7/12.
//  Copyright © 2018年 ChangDao. All rights reserved.
//

#import "UITextField+Font.h"
#import "CDFontUtils.h"

#import <objc/runtime.h>

@implementation UITextField (Font)
+ (void)load{
    
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(fontInitWithCoder:));
    method_exchangeImplementations(imp, myImp);
}

- (id)fontInitWithCoder:(NSCoder *)aDecode{
    
    [self fontInitWithCoder:aDecode];
    if (self) {
        
        if (self.tag != CDFontTag) {
            
            //            NSLog(@"打印字体： familyName：%@ fontName: %@", self.font.familyName, self.font.fontName);

            NSArray *nameArray = @[@"PingFangSC-Semibold",
                                   @".SFUIDisplay-Bold",
                                   @".SFUIDisplay-Semibold",
                                   @".SFUIText-Semibold",
                                   @".SFUIText-Bold"];
            
            CGFloat fontSize = self.font.pointSize;
            
            if ([nameArray containsObject:self.font.fontName]) {
                
                self.font = CDUIFontBoldMake(fontSize);
            } else if ([self.font.fontName isEqualToString:@".SFUIDisplay-Medium"] ||
                       [self.font.fontName isEqualToString:@".SFUIText-Medium"]) {
                
                self.font = CDUIFontMediumMake(fontSize);
                
            } else {
                self.font = CDUIFontMake(fontSize);
            }

            
        }
    }
    return self;
}

@end
