//
//  PublishViewController.m
//  Twenu
//
//  Created by Kyle Kirby on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PublishViewController.h"

@implementation PublishViewController
	@synthesize
		publishWindow,
		tweetArea;

	- (id) init
	{
		if(self = [super initWithNibName:@"PublishViewController" bundle:nil]){
			[NSBundle loadNibNamed:@"PublishViewController" owner:self];
		}
		return self;
	}

	- (void) awakeFromNib
	{
		[self.publishWindow setAcceptsMouseMovedEvents:YES];
		[self.publishWindow setLevel:NSPopUpMenuWindowLevel];
		[self.publishWindow setOpaque:NO];
		[self.publishWindow setBackgroundColor:[NSColor clearColor]];
	}

	- (void) show
	{
		[self.publishWindow makeKeyAndOrderFront:nil];
		[self.tweetArea becomeFirstResponder];
	}

	- (void) hide
	{
		[self.publishWindow orderOut:nil];
	}
@end
