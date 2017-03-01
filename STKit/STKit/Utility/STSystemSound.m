//
//  STSystemSound.m
//  IOS自定义常用控件
//
//  Created by shenzhaoliang on 15/2/28.
//  Copyright (c) 2015年 st. All rights reserved.
//

#import "STSystemSound.h"
#import "STLog.h"

@implementation STSystemSound

/* 从ID中播放系统声音 */
+ (void)playSystemSound:(AudioID)audioID
{
    AudioServicesPlaySystemSound(audioID);
}

/* 播放系统声音震动 */
+ (void)playSystemSoundVibrate
{
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}

/* 播放网页声音 */
+ (SystemSoundID)playCustomSound:(NSURL *)soundURL
{
    SystemSoundID soundID;
    
    OSStatus err = AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(soundURL), &soundID);
    if(err != kAudioServicesNoError)
    {
        STLog(@"Could not load %@", soundURL);
    }
    return soundID;
}

/* 配置自定义音效 */
+ (BOOL)disposeSound:(SystemSoundID)soudID
{
    OSStatus err = AudioServicesDisposeSystemSoundID(soudID);
    if(err != kAudioServicesNoError)
    {
        STLog(@"Error while disposing sound %i", (unsigned int)soudID);
        return NO;
    }
    
    return YES;
}

@end
