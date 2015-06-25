//
//  ViewController.m
//  BuddyBuildSDKExample
//
//  Created by Chris on 2015-06-05.
//  Copyright (c) 2015 BB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate>
@property (strong) IBOutlet UIImageView* imageView;
@end

@implementation ViewController

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    NSLog(@"image = %@", [UIImage imageNamed:@"iphone6@2x.PNG"]);

    if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation)) {
        self.imageView.image = [UIImage imageNamed:@"IMG_0043@2x.PNG"];
    }

    if (UIInterfaceOrientationIsPortrait(toInterfaceOrientation)) {
        self.imageView.image = [UIImage imageNamed:@"iphone6@2x.PNG"];
    }




    NSLog(@"self.imageView %@", NSStringFromCGRect(self.imageView.frame));
}
 
- (IBAction)handleLongPressGestures:(UILongPressGestureRecognizer *)sender {
    //int *x = NULL; *x = 42;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
