#import "MenubarController.h"

@implementation MenubarController

    @synthesize
        statusItem,
		statusItemView,
		publishViewController;

	- (id)init
	{
		if (self = [super init]){
			[self setStatusItemView:
				[[StatusItemView alloc]
					initWithWidth:STATUS_ITEM_VIEW_WIDTH
					statusImage: [NSImage imageNamed:@"birdoff"]
					highlightImage: [NSImage imageNamed:@"birdon"]
					clickAction: [[SelectorCombo alloc] initWithSelector:@selector(clickAction:) andTarget:self]
				]
			];
			
			[self setStatusItem: 
				[[NSStatusBar systemStatusBar] statusItemWithLength:STATUS_ITEM_VIEW_WIDTH]
			];
			
			[[self statusItem] setView:
				[self statusItemView]
			];
			
			[self setPublishViewController:[[PublishViewController alloc] init]];
		}
		return self;
	}

	- (void) clickAction: (NSEvent*)event
	{
		bool isHighlighted = [[self statusItemView] isHighlighted];
		[[self statusItemView] setIsHighlighted: !isHighlighted];
		if(isHighlighted){
			[self.publishViewController hide];
		}
		else {
			NSRect globalRect = [self.statusItemView globalRect];
			NSRect myRect = NSZeroRect;
			myRect.size = self.publishViewController.publishWindow.frame.size;
			myRect.origin = globalRect.origin;
			myRect.origin.y -= myRect.size.height;
			myRect.origin.x -= myRect.size.width / 2 - 13.3;
			
			[self.publishViewController.publishWindow setFrame:myRect display:YES];
			[self.publishViewController show];
		}
	}


	- (void)dealloc
	{
        [super dealloc];
		[[NSStatusBar systemStatusBar] removeStatusItem:self.statusItem];
	}

@end
