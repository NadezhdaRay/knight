//
//  Forge.h
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ArmorProtocol.h"
#import "WeaponProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Forge : NSObject

-(id <BootsProtocol>)makeBoots;
-(id <ChestProtocol>)makeChest;
-(id <HelmetProtocol>)makeHelmet;
-(id <PantsProtocol>)makePants;

-(id <ArmorProtocol>)makeArmor;
-(id <WeaponProtocol>)makeWeapon;

-(id <WeaponProtocol>)makeIronSword;
-(id <WeaponProtocol>)makeWarBow;
-(id <WeaponProtocol>)makePeak;

@end

NS_ASSUME_NONNULL_END
