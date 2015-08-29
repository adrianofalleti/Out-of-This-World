//
//  ViewController2.h
//  Out of this world
//
//  Created by Adriano Falleti on 29/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"

@interface ViewController2 : UIViewController <UIScrollViewDelegate>


@property (weak, nonatomic) IBOutlet UIScrollView *scrollView1;

@property (strong,nonatomic) UIImageView *imageView;

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView;

@property (strong,nonatomic) SpaceObject *planet;


@end
