//
//  TwenuAppDelegate.h
//  Twenu
//
//  Created by Kyle Kirby on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MenubarController.h"

@interface TwenuAppDelegate : NSObject <NSApplicationDelegate>
    @property (nonatomic, strong, retain) MenubarController *menubarController;
    @property (assign) IBOutlet NSWindow *window;
@end
