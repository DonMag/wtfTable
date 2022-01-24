//
//  AppDelegate.m
//  wtfSB
//
//  Created by Don Mag on 1/24/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Override point for customization after application launch.

//	if (@available(iOS 15.0, *)) {
//		UINavigationBarAppearance *appearance = [UINavigationBarAppearance new];
//		[appearance configureWithOpaqueBackground];
//		appearance.backgroundColor = [UIColor systemBlueColor];
//		
//		self.navigationItem.standardAppearance = appearance;
//		self.navigationItem.compactAppearance = appearance;
//		self.navigationItem.scrollEdgeAppearance = appearance;
//		self.navigationItem.compactScrollEdgeAppearance = appearance;
//	}

	return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
	// Called when a new scene session is being created.
	// Use this method to select a configuration to create the new scene with.
	return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
	// Called when the user discards a scene session.
	// If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
	// Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
