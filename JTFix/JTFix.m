//
//  JTFix.m
//  JTFix
//
//  Created by tylinux on 2020/12/2.
//

#import "CaptainHook.h"
#import <Foundation/Foundation.h>

//@interface JTCaptureSizeInfoSubView : NSObject
//
//@property(retain, nonatomic) NSString *sizeInfoStr;
//
//@end

CHDeclareClass(JTCaptureSizeInfoSubView);

CHMethod(0, NSString *, JTCaptureSizeInfoSubView, sizeInfoStr) {
    NSString *ret = CHSuper(0, JTCaptureSizeInfoSubView, sizeInfoStr);
    return ret ?: @"1920 * 1080";
}

CHConstructor {
    NSLog(@"HOOK Enabled!");
    CHLoadLateClass(JTCaptureSizeInfoSubView);
    CHHook(0, JTCaptureSizeInfoSubView, sizeInfoStr);
}
