//
//  OAuthHelper.h
//  Twenu
//
//  Created by Kyle Kirby on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OAuthConsumer/OAuthConsumer.h>


@interface OAuthHelper : NSObject
- (void) doRequestToken;
@property (assign) OAToken *requestToken;
@end
