//
//  MXMatrixService.m
//  AdiumMatrix
//
//  Based on microblog-purple created by jsippel on 1/7/09.
//

#import "MXMatrixService.h"
#import "MXMatrixAccount.h"

#import <AIUtilities/AIImageAdditions.h>
#import <AIUtilities/AIImageDrawingAdditions.h>

#import <Adium/AIAccountViewController.h>
#import <Adium/AIStatusControllerProtocol.h>
#import <AIUtilities/AIStringUtilities.h>
#import <AIUtilities/AIImageAdditions.h>
#import <Adium/AISharedAdium.h> 

@implementation MXMatrixService

//Account Creation
- (Class)accountClass{
	return [MXMatrixAccount class];
}

//Service Description
- (NSString *)serviceCodeUniqueID{
	return @"libpurple-matrix";
}
- (NSString *)serviceID{
	return @"Matrix";
}
- (NSString *)serviceClass{
	return @"Matrix";
}
- (NSString *)shortDescription{
	return @"Matrix";
}
- (NSString *)longDescription{
	return @"Matrix";
}
- (NSCharacterSet *)allowedCharacters{
	return [NSCharacterSet characterSetWithCharactersInString:@"+abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@._- "];
}
- (NSCharacterSet *)ignoredCharacters{
	return [NSCharacterSet characterSetWithCharactersInString:@""];
}
- (BOOL)caseSensitive{
	return YES;
}
- (BOOL)canCreateGroupChats{
	return YES;
}
- (BOOL)supportsPassword{
	return YES;
}
//Passwords are supported but optional
- (BOOL)requiresPassword
{
	return YES;
}
- (AIServiceImportance)serviceImportance{
	return AIServiceSecondary;
}

/*!
* @brief Placeholder string for the UID field
 */
- (NSString *)UIDPlaceholder
{
	return AILocalizedString(@"username","Sample name for new Matrix accounts");
}

/*!
* @brief Default icon
 *
 * Service Icon packs should always include images for all the built-in Adium services.  This method allows external
 * service plugins to specify an image which will be used when the service icon pack does not specify one.  It will
 * also be useful if new services are added to Adium itself after a significant number of Service Icon packs exist
 * which do not yet have an image for this service.  If the active Service Icon pack provides an image for this service,
 * this method will not be called.
 *
 * The service should _not_ cache this icon internally; multiple calls should return unique NSImage objects.
 *
 * @param iconType The AIServiceIconType of the icon to return. This specifies the desired size of the icon.
 * @return NSImage to use for this service by default
 */


- (NSImage *)defaultServiceIconOfType:(AIServiceIconType)iconType
{
	NSImage *baseImage = [NSImage imageNamed:@"matrix16" forClass:[self class] loadLazily:YES];

	if (iconType == AIServiceIconSmall) {
		baseImage = [baseImage imageByScalingToSize:NSMakeSize(16, 16)];
	}

	return baseImage;
}

- (void)registerStatuses{
	
	AILog(@"MXMatrixService:Setting status");
	[[adium statusController] registerStatus:STATUS_NAME_AVAILABLE
							 withDescription:[[adium statusController] localizedDescriptionForCoreStatusName:STATUS_NAME_AVAILABLE]
									  ofType:AIAvailableStatusType
								  forService:self];
	 }


@end


