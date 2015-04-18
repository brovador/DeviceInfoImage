//
//  UIView+UIImageExtensions.m
//  DeviceInfoImage
//
//  Created by Jesús on 18/4/15.
//  Copyright (c) 2015 Jesús. All rights reserved.
//

#import "UIView+UIImageExtensions.h"

@implementation UIView (UIImageExtensions)

- (UIImage*)renderImage
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0.0f);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}

@end
