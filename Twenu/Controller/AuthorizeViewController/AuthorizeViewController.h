//
//  PublishViewController.h
//  Twenu
//
//  Created by Kyle Kirby on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AuthorizeViewController : NSViewController
@property (assign) IBOutlet NSWindow *authorizeWindow;
- (void) show;
- (void) hide;
- (IBAction)continueIsPressed:(id)ref;
@end
