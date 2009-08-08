//
//  XMPPCommand.m
//  webgnosus
//
//  Created by Troy Stribling on 3/29/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import "XMPPCommand.h"
#import "XMPPxData.h"
#import "NSXMLElementAdditions.h"

//-----------------------------------------------------------------------------------------------------------------------------------

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation XMPPCommand

//-----------------------------------------------------------------------------------------------------------------------------------

//===================================================================================================================================
#pragma mark XMPPCommand

//-----------------------------------------------------------------------------------------------------------------------------------
+ (XMPPCommand*)createFromElement:(NSXMLElement*)element {
	XMPPCommand* result = (XMPPCommand*)element;
	result->isa = [XMPPCommand class];
	return result;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (XMPPCommand*)initWithNode:(NSString*)cmdNode andAction:(NSString*)cmdAction {
	if(self = [super initWithName:@"command"]) {
        [self addNamespace:[NSXMLNode namespaceWithName:@"" stringValue:@"http://jabber.org/protocol/commands"]];
        [self addNode:cmdNode];
        [self addAction:cmdAction];
	}
	return self;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (XMPPCommand*)initWithNode:(NSString*)cmdNode action:(NSString*)cmdAction andData:(XMPPxData*)cmdData {
	if([self initWithNode:cmdNode andAction:cmdAction]) {
        [self addData:cmdData];
	}
	return self;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (XMPPCommand*)initWithNode:(NSString*)cmdNode action:(NSString*)cmdAction data:(XMPPxData*)cmdData andStatus:(NSString*)cmdStatus {
	if([self initWithNode:cmdNode action:cmdAction andData:cmdData]) {
        [self addStatus:cmdStatus];
	}
	return self;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSString*)node {
    return [[self attributeForName:@"node"] stringValue];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)addNode:(NSString*)val {
    [self addAttributeWithName:@"node" stringValue:val];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSString*)status {
    return [[self attributeForName:@"status"] stringValue];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)addStatus:(NSString*)val {
    [self addAttributeWithName:@"status" stringValue:val];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSString*)action {
    return [[self attributeForName:@"action"] stringValue];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)addAction:(NSString*)val {
    [self addAttributeWithName:@"action" stringValue:val];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (XMPPxData*)data {
    XMPPxData* xData = nil;
    NSXMLElement* xElement = [self elementForName:@"x"];
    if (xElement) {
        xData = [XMPPxData createFromElement:xElement];
    }
    return xData;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)addData:(XMPPxData*)child {
    [self addChild:child];
}

@end