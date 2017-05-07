//
//  MXMatrixLibPurpleServicePlugin.m
//  AdiumMatrix
//
//  Based on microblog-purple created by jsippel on 1/7/09.
//

#import <Adium/AIPlugin.h>
#import <AdiumLibpurple/AILibpurplePlugin.h>

#import "MXMatrixLibPurpleServicePlugin.h"
#import "MXMatrixService.h"

@implementation MXMatrixLibPurpleServicePlugin

extern BOOL purple_init_plugin(void);


- (void) installPlugin
{
	[MXMatrixService registerService];
	AILog(@"Installing Matrix Plugin");
	purple_init_matrix_plugin();
}

- (void)loadLibpurplePlugin
{
	AILog(@"Loading Matrix Plugin");
}

- (void) installLibpurplePlugin
{
	AILog(@"Loading Matrix LibPurple Plugin");
}

@end
