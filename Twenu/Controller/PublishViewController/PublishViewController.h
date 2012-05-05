//
//  PublishViewController.h
//  Twenu
//
//  Created by Kyle Kirby on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PublishViewController : NSViewController
	@property (assign) IBOutlet NSPanel *publishWindow;
	@property (assign) IBOutlet NSTextField *tweetArea;
	- (void) show;
	- (void) hide;
@end
