//
//  HistoryMessageCache.m
//  webgnosus
//
//  Created by Troy Stribling on 10/29/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import "HistoryMessageCache.h"
#import "MessageModel.h"

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation HistoryMessageCache

//-----------------------------------------------------------------------------------------------------------------------------------

//===================================================================================================================================
#pragma mark HistoryMessageCache

//-----------------------------------------------------------------------------------------------------------------------------------
- (id)initWithAccount:(AccountModel*)initAccount {
	if(self = [super initWithAccount:initAccount]) {
        [self load];
	}
	return self;
}


//-----------------------------------------------------------------------------------------------------------------------------------
- (NSArray*)addMessages {
    return [MessageModel findAllByAccount:self.account withPkGreaterThan:self.lastPk andLimit:self.cacheIncrement];
}

@end
