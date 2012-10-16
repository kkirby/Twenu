//
//  OAuthHelper.m
//  Twenu
//
//  Created by Kyle Kirby on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OAuthHelper.h"
#import "AuthorizeViewController.h"

@implementation OAuthHelper
@synthesize requestToken;
- (void) doRequestToken {
    AuthorizeViewController *authorizeWindow = [[AuthorizeViewController alloc] init];
    [authorizeWindow show];
    OAConsumer *consumer = [[OAConsumer alloc] initWithKey:@""
                                                    secret:@""];
    
    NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/oauth/request_token"];
    
    OAMutableURLRequest *request = [[OAMutableURLRequest alloc] initWithURL:url
                                                                   consumer:consumer
                                                                      token:nil   // we don't have a Token yet
                                                                      realm:nil   // our service provider doesn't specify a realm
                                                          signatureProvider:nil]; // use the default method, HMAC-SHA1
    
    [request setHTTPMethod:@"POST"];
    
    OADataFetcher *fetcher = [[OADataFetcher alloc] init];
    
    [fetcher fetchDataWithRequest:request
                         delegate:self
                didFinishSelector:@selector(requestTokenTicket:didFinishWithData:)
                  didFailSelector:@selector(requestTokenTicket:didFailWithError:)];
}

- (void)requestTokenTicket:(OAServiceTicket *)ticket didFinishWithData:(NSData *)data {
    NSLog(@"Ticket.");
    if (ticket.didSucceed) {
        
        NSString *responseBody = [[NSString alloc] initWithData:data
                                                       encoding:NSUTF8StringEncoding];
        requestToken = [[OAToken alloc] initWithHTTPResponseBody:responseBody];
        [requestToken storeInUserDefaultsWithServiceProviderName: @"twitter.com" prefix:@""];
        NSString *token = [[NSString alloc] initWithFormat:@"https://api.twitter.com/oauth/authorize?oauth_token=%@", requestToken.key];
        NSURL *url = [NSURL URLWithString:token];
        [[NSWorkspace sharedWorkspace] openURL:url];
    }
}

- (void)requestTokenTicket:(OAServiceTicket *)ticket didFailWithError:(NSData *)data {
    
}
@end
