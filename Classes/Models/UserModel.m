//
//  UserModel.m
//  webgnosus
//
//  Created by Troy Stribling on 3/6/09.
//  Copyright 2009 Plan-B Research. All rights rfullJIDeserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import "UserModel.h"

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
- (void)load {
}

@end