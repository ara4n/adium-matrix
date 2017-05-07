//
//  MXMatrixAccount.m
//  AdiumMatrix
//
//  Based on microblog-purple created by jsippel on 1/7/09.
//

#import <Adium/AIStatusControllerProtocol.h>
#import <Adium/AIAccountControllerProtocol.h>
#import <AIUtilities/AIMenuAdditions.h>
#import <Adium/AISharedAdium.h> 

#import "MXMatrixAccount.h"

@implementation MXMatrixAccount

- (const char *)protocolPlugin
{
	return "prpl-matrix";
}

- (void)configurePurpleAccount
{
	[super configurePurpleAccount];
}

//- (NSString *)host
//{
//	return @"matrix.org";
//}

@end
