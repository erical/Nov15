//
//  Nov15AppDelegate.h
//  Nov15
//
//  Created by Erica Lederman on 11/14/12.
//  Copyright (c) 2012 Erica Lederman. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Nov15AppDelegate: UIResponder <UIApplicationDelegate> {
	View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;
@end
