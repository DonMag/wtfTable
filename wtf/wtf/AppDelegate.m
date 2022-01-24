//
//  AppDelegate.m
//  wtf
//
//  Created by kenny on 1/21/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Override point for customization after application launch.
	
	if (@available(iOS 15.0, *)) {
		UINavigationBarAppearance *appearance = [UINavigationBarAppearance new];
		[appearance configureWithOpaqueBackground];
		appearance.backgroundColor = [UIColor systemRedColor];
		
		UINavigationBar.appearance.standardAppearance = appearance;
		UINavigationBar.appearance.compactAppearance = appearance;
		UINavigationBar.appearance.scrollEdgeAppearance = appearance;
		UINavigationBar.appearance.compactScrollEdgeAppearance = appearance;
		
	}
	
	
	return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
	// Called when a new scene session is being created.
	// Use this method to select a configuration to create the new scene with.
	UISceneConfiguration *sceneconfig = [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
	
	return sceneconfig;
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
	// Called when the user discards a scene session.
	// If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
	// Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
