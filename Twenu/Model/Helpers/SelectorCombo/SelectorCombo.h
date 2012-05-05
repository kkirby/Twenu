//
//  SelectorCombo.h
//  Twenu
//
//  Created by Kyle Kirby on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SelectorCombo : NSObject
	
	@property (nonatomic) SEL selector;
	@property (nonatomic, unsafe_unretained) id target;
	
	- (SelectorCombo*)initWithSelector:(SEL)selector andTarget: (id)target;
	- (id)invokeWithEvent: (NSEvent*)event;
@end
