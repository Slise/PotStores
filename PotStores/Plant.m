//
//  Plant.m
//  PotStores
//
//  Created by Benson Huynh on 2015-12-01.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "Plant.h"


@implementation Plant

@dynamic plantName;
@dynamic price;
@dynamic plantImage;

+ (NSString *) parseClassName {
    return @"Plant";
}


@end
