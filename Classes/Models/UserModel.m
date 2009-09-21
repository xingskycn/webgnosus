//
//  UserModel.m
//  webgnosus
//
//  Created by Troy Stribling on 3/6/09.
//  Copyright 2009 Plan-B Research. All rights rfullJIDeserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import "UserModel.h"
#import "XMPPJID.h"

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@interface UserModel (PrivateAPI)

@end

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation UserModel

//-----------------------------------------------------------------------------------------------------------------------------------
@synthesize pk;
@synthesize jid;
@synthesize resource;
@synthesize nickname;
@synthesize host;
@synthesize clientName;
@synthesize clientVersion;

//===================================================================================================================================
#pragma mark UserModel

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSString*)bareJID {
    return self.jid;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSString*)fullJID {
	NSString* aFullJid;
	if (self.resource) {
		aFullJid = [[NSString alloc] initWithFormat:@"%@/%@", self.jid, self.resource];
	} else {
		aFullJid = self.jid;
	}
	return aFullJid;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (XMPPJID*)toJID {
    return [XMPPJID jidWithString:[self fullJID]];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)load {
}

//===================================================================================================================================
#pragma mark NSObject

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)dealloc {
    [super dealloc];
}

@end
