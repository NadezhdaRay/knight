//
//  Garrison.m
//  Knight
//
//  Created by Ivan Grigoriev on 05/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "Garrison.h"

@implementation Garrison

-(Knight *)makeKnightWithName:(NSString *)name {
    Knight *knight = [Knight new];
    Forge *forge = [Forge new];
    self.forge = forge;
    
    knight.name = name;
    knight.armor = [self.forge makeArmor];
    knight.weapon = [self.forge makeWarBow];
    return knight;
}

@end
