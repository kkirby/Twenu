#import "SelectorCombo.h"

@interface StatusItemView : NSView
    {
		BOOL isHighlighted;
    }
	
	@property (nonatomic, strong, retain) NSImage *statusImage;
	@property (nonatomic, strong, retain) NSImage *highlightImage;
	@property (nonatomic, retain) SelectorCombo *clickAction;
	@property (nonatomic, assign) BOOL isHighlighted;
	
    - (StatusItemView*)
		initWithWidth:	(CGFloat)width
		statusImage:	(NSImage*)statusImage
		highlightImage:	(NSImage*)highlightImage
		clickAction:	(SelectorCombo*)clickAction;
	
	- (NSRect)globalRect;

@end
