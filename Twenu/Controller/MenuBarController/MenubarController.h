#define STATUS_ITEM_VIEW_WIDTH 24.0

#import "StatusItemView.h"
#import "PublishViewController.h"

@interface MenubarController : NSObject

    @property (nonatomic, strong, retain) NSStatusItem *statusItem;
	@property (nonatomic, retain) StatusItemView *statusItemView;
	@property (nonatomic, retain) PublishViewController *publishViewController;
	
	- (void) clickAction: (NSEvent*)event;
@end
