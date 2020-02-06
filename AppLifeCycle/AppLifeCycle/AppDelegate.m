//
//  AppDelegate.m
//  AppLifeCycle
//
//  Created by Eunjin on 06/02/2020.
//  Copyright © 2020 Eunjin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize window;
//- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions {
//    NSLog(@"willFinishLaunchingWithOptions");
//    return YES;
//}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"didFinishLaunchingWithOptions");
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"didFinishLaunchingWithOptions");
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"applicationWillResignActive");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"applicationWillEnterForeground");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"applicationWillTerminate");
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
