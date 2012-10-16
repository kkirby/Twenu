//
//  PublishViewController.m
//  Twenu
//
//  Created by Kyle Kirby on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AuthorizeViewController.h"

@implementation AuthorizeViewController
@synthesize
    authorizeWindow;

- (id) init
{
    if(self = [super initWithNibName:@"AuthorizeWindow" bundle:nil]){
        [NSBundle loadNibNamed:@"AuthorizeWindow" owner:self];
    }
    return self;
}

- (void) awakeFromNib
{
}

- (void) show
{
    [self.authorizeWindow makeKeyAndOrderFront:nil];
}

- (void) hide
{
    [self.authorizeWindow orderOut:nil];
}

- (IBAction)continueIsPressed:(id)ref {
    [self hide];
}
@end
