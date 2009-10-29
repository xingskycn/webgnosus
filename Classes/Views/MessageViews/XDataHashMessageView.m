//
//  XDataHashMessageView.m
//  webgnosus
//
//  Created by Troy Stribling on 10/24/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import "XDataHashMessageView.h"
#import "LabelGridView.h"
#import "XMPPxData.h"

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@interface XDataHashMessageView (PrivateAPI)

@end

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation XDataHashMessageView

//-----------------------------------------------------------------------------------------------------------------------------------

//===================================================================================================================================
#pragma mark XDataHashMessageView

//-----------------------------------------------------------------------------------------------------------------------------------
+ (void)initLabelGridView:(LabelGridView*)labelGridView {
    [labelGridView setCellColor:[UIColor colorWithRed:0.9f green:0.9f blue:0.9f alpha:1.0f] forColumn:0];
}

//-----------------------------------------------------------------------------------------------------------------------------------
+ (NSMutableArray*)buildGridArray:(XMPPxData*)data {
    NSMutableArray* fieldHash = [data fields];
    NSMutableArray* gridArray = [NSMutableArray arrayWithCapacity:[fieldHash count]];
    for(int j = 0; j < [fieldHash count]; j++) {
        NSMutableArray* attrs = [fieldHash objectAtIndex:j];
        NSString* attr = [self humanizeString:[attrs objectAtIndex:0]];
        NSString* val = [self stringifyArray:[attrs lastObject]];
        [gridArray addObject:[NSMutableArray arrayWithObjects:attr, val, nil]];
    }
    return gridArray;
}

//===================================================================================================================================
#pragma mark XDataHashMessageView PrivateAPI

//===================================================================================================================================
#pragma mark XDataMessageView

//===================================================================================================================================
#pragma mark NSObject

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)dealloc {
    [super dealloc];
}

@end