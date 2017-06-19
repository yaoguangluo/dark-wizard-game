//
//  day_of_worshipAppDelegate.h
//  DOW2
//
//  Created by lyg on 6/25/14.
//  Copyright (c) 2014 lyg.tinos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface day_of_worshipAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
