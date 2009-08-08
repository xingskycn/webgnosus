//
//  XMPPDiscoInfoQuery.h
//  webgnosus
//
//  Created by Troy Stribling on 8/4/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import <Foundation/Foundation.h>
#import "XMPPQuery.h"

//-----------------------------------------------------------------------------------------------------------------------------------
@class XMPPDiscoFeature;
@class XMPPDiscoIdentity;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@interface XMPPDiscoInfoQuery : XMPPQuery 

//-----------------------------------------------------------------------------------------------------------------------------------
+ (XMPPDiscoInfoQuery*)createFromElement:(NSXMLElement*)element;
- (XMPPDiscoInfoQuery*)initWithNode:(NSString*)itemsNode;

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSString*)node;
- (void)addNode:(NSString*)val;

- (NSArray*)features;
- (void)addFeature:(XMPPDiscoFeature*)val;

- (NSArray*)identities;
- (void)addIdentity:(XMPPDiscoIdentity*)val;

@end