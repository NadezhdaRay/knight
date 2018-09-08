//
//  Knight.m
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "Knight.h"

@implementation Knight

-(instancetype)initWithName:(NSString *)name armor:(id <ArmorProtocol>)armor weapon:(id <WeaponProtocol>)weapon {
    if (self = [super init]) {
        self.name = name;
        self.armor = armor;
        self.weapon = weapon;
    }
    return self;
}

@end
