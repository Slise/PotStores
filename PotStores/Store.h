//
//  Store.h
//  PotStores
//
//  Created by Benson Huynh on 2015-12-05.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>


@interface Store : PFObject<PFSubclassing>


@property (nonatomic, strong) NSString *nameOfStore;
@property (nonatomic, strong) NSArray *catalogue;

+ (NSString *)parseClassName;


@end
