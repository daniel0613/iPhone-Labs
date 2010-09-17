//
//  AnimationViewAppDelegate.h
//  AnimationView
//
//  Created by ダニー on 10/09/17.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AnimationViewViewController;

@interface AnimationViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AnimationViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AnimationViewViewController *viewController;

@end

