//
//  UIImage+Transform.m
//  Decorator
//
//  Created by 杨萧玉 on 14-5-10.
//  Copyright (c) 2014年 杨萧玉. All rights reserved.
//

#import "UIImage+Transform.h"
#import "UIImage+BaseFilter.h"
@implementation UIImage (Transform)
- (UIImage *) imageWithTransform:(CGAffineTransform)transform
{
    CGContextRef context = [self beginContext];
    
    // setup transformation
    CGContextConcatCTM(context, transform);
    
    // Draw the original image to the context
    UIImage *imageOut = [self getImageFromCurrentImageContext];
    
    [self endContext];
    
    return imageOut;
}
@end
