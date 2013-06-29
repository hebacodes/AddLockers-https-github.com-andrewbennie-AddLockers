//
//  Category.h
//  AddLockers
//
//  Created by Heba Elsayed on 6/28/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class LockerAccount;

@interface Category : NSManagedObject

@property (nonatomic, retain) NSString * categoryName;
@property (nonatomic, retain) NSSet *categoryAccounts;
@end

@interface Category (CoreDataGeneratedAccessors)

- (void)addCategoryAccountsObject:(LockerAccount *)value;
- (void)removeCategoryAccountsObject:(LockerAccount *)value;
- (void)addCategoryAccounts:(NSSet *)values;
- (void)removeCategoryAccounts:(NSSet *)values;

@end
