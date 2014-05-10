//
//  UIImage+BaseFilter.h
//  Decorator
//
//  Created by 杨萧玉 on 14-5-10.
//  Copyright (c) 2014年 杨萧玉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (BaseFilter)
- (CGContextRef) beginContext;
- (UIImage *) getImageFromCurrentImageContext;
- (void) endContext;
@end
