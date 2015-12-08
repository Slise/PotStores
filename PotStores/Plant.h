//
//  Plant.h
//  PotStores
//
//  Created by Benson Huynh on 2015-12-01.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Plant : PFObject<PFSubclassing>


@property (nonatomic, strong) NSString *plantName;
@property (nonatomic) float price;
@property (nonatomic, strong) UIImage *plantImage;

+ (NSString *) parseClassName;


@end
