//
//  PublishWindow.m
//  Twenu
//
//  Created by Kyle Kirby on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PublishWindow.h"

@implementation PublishWindow
- (BOOL)canBecomeKeyWindow;
{
    return YES; // Allow Search field to become the first responder
}
@end
