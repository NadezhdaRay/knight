//
//  Forge.m
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "Forge.h"

#import "Boots.h"
#import "Chest.h"
#import "Helmet.h"
#import "Pants.h"

#import "Armor.h"
#import "Weapon.h"

@implementation Forge

-(id <BootsProtocol>)makeBoots {
    Boots *boots = [Boots new];
    boots.name = @"Leather boots";
    boots.price = 12.3f;
    boots.protectionIndex = 4;
    return boots;
}

-(id <ChestProtocol>)makeChest {
    Chest *chest = [Chest new];
    chest.name = @"Leather chest";
    chest.price = 30.7f;
    chest.protectionIndex = 20;
    return chest;
}

-(id <HelmetProtocol>)makeHelmet {
    Helmet *helmet = [Helmet new];
    helmet.name = @"Leather helmet";
    helmet.price = 10.1f;
    helmet.protectionIndex = 12;
    return helmet;
}

-(id <PantsProtocol>)makePants {
    Pants *pants = [Pants new];
    pants.name = @"Leather pants";
    pants.price = 50.8f;
    pants.protectionIndex = 100;
    return pants;
}

-(id <ArmorProtocol>)makeArmor {
    Armor *armor = [Armor new];
    armor.boots = [self makeBoots];
    armor.chest = [self makeChest];
    armor.helmet = [self makeHelmet];
    armor.pants = [self makePants];
    return armor;
}

-(id <WeaponProtocol>)makeWeapon {
    Weapon *weapon = [Weapon new];
    weapon.name = @"Some Weapon";
    weapon.price = 10.5f;
    weapon.attackIndex = 2;
    return weapon;
}

-(id <WeaponProtocol>)makeIronSword {
    Weapon *weapon = [Weapon new];
    weapon.name = @"Iron Sword";
    weapon.price = 30.5f;
    weapon.attackIndex = 15;
    return weapon;
}

-(id <WeaponProtocol>)makeWarBow {
    Weapon *weapon = [Weapon new];
    weapon.name = @"War bow";
    weapon.price = 26.3f;
    weapon.attackIndex = 16;
    return weapon;
}

-(id <WeaponProtocol>)makePeak {
    Weapon *weapon = [Weapon new];
    weapon.name = @"Peak";
    weapon.price = 15.3f;
    weapon.attackIndex = 4;
    return weapon;
}

@end
