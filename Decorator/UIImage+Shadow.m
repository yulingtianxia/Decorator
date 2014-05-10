//
//  UIImage+Shadow.m
//  Decorator
//
//  Created by 杨萧玉 on 14-5-10.
//  Copyright (c) 2014年 杨萧玉. All rights reserved.
//

#import "UIImage+Shadow.h"
#import "UIImage+BaseFilter.h"
@implementation UIImage (Shadow)
- (UIImage *) imageWithDropShadow
{
    CGContextRef context = [self beginContext];
    
    // set up shadow
    CGSize offset = CGSizeMake (-25,  15);
    CGContextSetShadow(context, offset, 20.0);
    
    // Draw the original image to the context
    UIImage * imageOut = [self getImageFromCurrentImageContext];
    
    [self endContext];
    
    return imageOut;
}
@end
