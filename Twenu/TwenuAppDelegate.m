//
//  TwenuAppDelegate.m
//  Twenu
//
//  Created by Kyle Kirby on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TwenuAppDelegate.h"

#import "PublishViewController.h"
#import "OAuthHelper.h"

@implementation TwenuAppDelegate

    @synthesize
        window = _window,
        menubarController;

    - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
    {
        OAToken *accessToken = [[OAToken alloc] initWithUserDefaultsUsingServiceProviderName:@"twitter.com" prefix:@""];
        if(accessToken == NULL || [[NSUserDefaults standardUserDefaults] boolForKey:@"hasLoaded"] == (Boolean)[NSNull null]){
            OAuthHelper* myHelper = [[OAuthHelper alloc] init];
            [myHelper doRequestToken];
        }
        [self setMenubarController: [[MenubarController alloc] init]];
    }

@end
