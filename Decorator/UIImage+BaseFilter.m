//
//  UIImage+BaseFilter.m
//  Decorator
//
//  Created by 杨萧玉 on 14-5-10.
//  Copyright (c) 2014年 杨萧玉. All rights reserved.
//

#import "UIImage+BaseFilter.h"

@implementation UIImage (BaseFilter)
- (CGContextRef) beginContext
{
    
    CGSize size = [self size];
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    return context;
}

- (UIImage *) getImageFromCurrentImageContext
{
    [self drawAtPoint:CGPointZero];
    
    // Retrieve the UIImage from the current context
    UIImage *imageOut = UIGraphicsGetImageFromCurrentImageContext();
    
    return imageOut;
}

- (void) endContext
{
    UIGraphicsEndImageContext();
}
@end
