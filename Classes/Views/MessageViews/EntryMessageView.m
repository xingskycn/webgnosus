//
//  EntryMessageView.m
//  webgnosus
//
//  Created by Troy Stribling on 10/24/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import "EntryMessageView.h"
#import "MessageModel.h"
#import "XMPPEntry.h"

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@interface EntryMessageView (PrivateAPI)

@end

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation EntryMessageView

//===================================================================================================================================
#pragma mark EntryMessageView

//===================================================================================================================================
#pragma mark EntryMessageView (PrivateAPI)

//-----------------------------------------------------------------------------------------------------------------------------------
+ (NSString*)getMessageText:(MessageModel*)message {
    XMPPEntry* entry =  [message parseEntryMessage];
    return [entry title];
}

//===================================================================================================================================
#pragma mark NSObject

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)dealloc {
    [super dealloc];
}

@end