//
//  ViewController.m
//  Decorator
//
//  Created by 杨萧玉 on 14-5-10.
//  Copyright (c) 2014年 杨萧玉. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Transform.h"
#import "UIImage+Shadow.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *image = imageView.image;
    
    
    // create a transformation
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI / 4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width / 2.0,
                                                                            image.size.height / 8.0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
    UIImage* finalImage = [[image imageWithTransform:finalTransform] imageWithDropShadow];
    [imageView setImage:finalImage];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
