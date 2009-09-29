//
//  XDataScalarCell.m
//  webgnosus
//
//  Created by Troy Stribling on 9/28/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import "XDataScalarCell.h"
#import "LabelGridView.h"

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@interface XDataScalarCell (PrivateAPI)

@end

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation XDataScalarCell

//-----------------------------------------------------------------------------------------------------------------------------------

//===================================================================================================================================
#pragma mark XDataScalarCell

//===================================================================================================================================
#pragma mark XDataScalarCell PrivateAPI

//===================================================================================================================================
#pragma mark XDataMessageLabelGridView Protocol

//-----------------------------------------------------------------------------------------------------------------------------------
+ (NSMutableArray*)messageAttributes {
    return [NSMutableArray arrayWithObjects:@"booted_on", @"up_time", @"busy", @"idle", nil];
}

//-----------------------------------------------------------------------------------------------------------------------------------
+ (void)initLabelGridView:(LabelGridView*)labelGridView {
    [labelGridView setCellColor:[UIColor colorWithRed:0.9f green:0.9f blue:0.9f alpha:1.0f] forColumn:0];
}

//===================================================================================================================================
#pragma mark XDataMessageLabelGridView

//===================================================================================================================================
#pragma mark UITableViewCell

//===================================================================================================================================
#pragma mark NSObject

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)dealloc {
    [super dealloc];
}

@end
