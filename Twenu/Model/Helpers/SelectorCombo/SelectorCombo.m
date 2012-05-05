//
//  SelectorCombo.m
//  Twenu
//
//  Created by Kyle Kirby on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SelectorCombo.h"

@implementation SelectorCombo
	@synthesize
		selector,
		target;

	- (SelectorCombo*) initWithSelector:(SEL)aSelector andTarget:(id)aTarget {
		if(self = [super init]){
			[self setTarget:aTarget];
			[self setSelector:aSelector];
		}
		return self;
	}
	
	- (id) invokeWithEvent:(NSEvent *)event {
		return [[self target] performSelector:[self selector] withObject:event];
	}
@end
