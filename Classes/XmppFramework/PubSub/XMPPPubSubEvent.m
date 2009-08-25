//
//  XMPPPubSubEvent.m
//  webgnosus
//
//  Created by Troy Stribling on 8/8/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import "XMPPPubSubEvent.h"
#import "XMPPPubSubItems.h"
#import "NSXMLElementAdditions.h"

//-----------------------------------------------------------------------------------------------------------------------------------

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation XMPPPubSubEvent

//-----------------------------------------------------------------------------------------------------------------------------------

//===================================================================================================================================
#pragma mark XMPPPubSubEvent

//-----------------------------------------------------------------------------------------------------------------------------------
+ (XMPPPubSubEvent*)createFromElement:(NSXMLElement*)element {
	XMPPPubSubEvent* result = (XMPPPubSubEvent*)element;
	result->isa = [XMPPPubSubEvent class];
	return result;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (XMPPPubSubEvent*)init {
	if(self = [super initWithName:@"event"]) {
        [self addNamespace:[NSXMLNode namespaceWithName:@"" stringValue:@"http://jabber.org/protocol/pubsub#event"]];
	}
	return self;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSArray*)items {
    return [self elementsForName:@"items"];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)addItems:(XMPPPubSubItems*)val {
    [self addChild:val];
}

@end
