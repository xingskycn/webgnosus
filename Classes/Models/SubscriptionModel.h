//
//  SubscriptionModel.h
//  webgnosus
//
//  Created by Troy Stribling on 8/9/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import <Foundation/Foundation.h>
#import <sqlite3.h>

//-----------------------------------------------------------------------------------------------------------------------------------
@class AccountModel;
@class XMPPPubSubSubscription;
@class XMPPJID;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@interface SubscriptionModel : NSObject {
    NSInteger pk;
	NSInteger accountPk;
	NSString* subId;
    NSString* node;
    NSString* subscription;
    NSString* jid;
    BOOL synched;
}

//-----------------------------------------------------------------------------------------------------------------------------------
@property (nonatomic, assign) NSInteger pk;
@property (nonatomic, assign) NSInteger accountPk;
@property (nonatomic, assign) NSString* subId;
@property (nonatomic, retain) NSString* node;
@property (nonatomic, retain) NSString* subscription;
@property (nonatomic, retain) NSString* jid;
@property (nonatomic, assign) BOOL synched;

//-----------------------------------------------------------------------------------------------------------------------------------
+ (NSInteger)count;
+ (void)drop;
+ (void)create;
+ (NSMutableArray*)findAll;
+ (NSMutableArray*)findAllByAccount:(AccountModel*)requestAccount;
+ (SubscriptionModel*)findByAccount:(AccountModel*)requestAccount andNode:(NSString*)requestNode;
+ (void)destroyAllByAccount:(AccountModel*)requestAccount;
+ (void)insert:(XMPPPubSubSubscription*)insertSub forAccount:(AccountModel*)insertAccount;
+ (void)resetSyncFlag;

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)insert;
- (void)destroy;
- (void)load;
- (void)update;
- (XMPPJID*)nodeToJID;
- (NSInteger)synchedAsInteger;
- (void)setSynchedAsInteger:(NSInteger)value;
- (void)sync;

@end
