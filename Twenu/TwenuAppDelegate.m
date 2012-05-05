//
//  TwenuAppDelegate.m
//  Twenu
//
//  Created by Kyle Kirby on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TwenuAppDelegate.h"

#import "PublishViewController.h"

@implementation TwenuAppDelegate

    @synthesize
        window = _window,
        menubarController;

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        [self setMenubarController: [[MenubarController alloc] init]];
    }

@end
