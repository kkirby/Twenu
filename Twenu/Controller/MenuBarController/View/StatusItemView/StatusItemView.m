#import "StatusItemView.h"

@implementation StatusItemView

@synthesize
	statusImage,
	highlightImage,
	clickAction,
	isHighlighted;

#pragma mark -

- (StatusItemView*)
	initWithWidth:	(CGFloat)aWidth
	statusImage:	(NSImage*)aStatusImage
	highlightImage:	(NSImage*)aHighlightImage
	clickAction:	(SelectorCombo*)aClickAction
{
	NSRect itemRect = NSMakeRect(
		0.0,
		0.0,
		aWidth,
		[[NSStatusBar systemStatusBar] thickness]
	);
	if(self = [super initWithFrame:itemRect]){
		[self setStatusImage:aStatusImage];
		[self setHighlightImage:aHighlightImage];
		[self setClickAction:aClickAction];
	}
	return self;
}


#pragma mark -

- (void)drawRect:(NSRect)dirtyRect
{
	NSImage *icon = self.isHighlighted ? self.highlightImage : self.statusImage;
	NSSize iconSize = [icon size];
	NSRect bounds = self.bounds;
	CGFloat iconX = roundf((NSWidth(bounds) - iconSize.width) / 2);
	CGFloat iconY = roundf((NSHeight(bounds) - iconSize.height) / 2);
	NSPoint iconPoint = NSMakePoint(iconX, iconY);
	[icon compositeToPoint:iconPoint operation:NSCompositeSourceOver];
}

#pragma mark -
#pragma mark Mouse tracking

- (void)mouseDown:(NSEvent *)theEvent
{
	[[self clickAction] invokeWithEvent:theEvent];
}

#pragma mark -
#pragma mark Accessors

- (void)setIsHighlighted:(BOOL)aIsHighlighted
{
	if (isHighlighted == aIsHighlighted)return;
	isHighlighted = aIsHighlighted;
	[self setNeedsDisplay:YES];
}

- (NSRect)globalRect
{
    NSRect frame = [self frame];
    frame.origin = [self.window convertBaseToScreen:frame.origin];
    return frame;
}

@end
