//
//  DIIDeviceInfoView.m
//  DeviceInfoImage
//
//  Created by Jesús on 18/4/15.
//  Copyright (c) 2015 Jesús. All rights reserved.
//

#import <UIDevice-Hardware/UIDevice-Hardware.h>
#import "DIIDeviceInfoView.h"


@interface DIIDeviceInfoView ()

@property (nonatomic, weak) IBOutlet UILabel *lbSystemInfo1;
@property (nonatomic, weak) IBOutlet UILabel *lbSystemInfo2;
@property (nonatomic, weak) IBOutlet UILabel *lbSystemInfo3;


@end


@implementation DIIDeviceInfoView


#pragma mark Private

- (void)awakeFromNib
{
    UIDevice *currentDevice = [UIDevice currentDevice];
    
    _lbSystemInfo1.text = [currentDevice name];
    _lbSystemInfo2.text = [currentDevice modelName];
    _lbSystemInfo3.text = [currentDevice systemVersion];
}

@end
