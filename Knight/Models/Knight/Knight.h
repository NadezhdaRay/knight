//
//  Knight.h
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeaponProtocol.h"
#import "ArmorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Knight : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) id <ArmorProtocol> armor;
@property (nonatomic, strong) id <WeaponProtocol> weapon;

-(instancetype)initWithName:(NSString *)name armor:(id <ArmorProtocol>)armor weapon:(id <WeaponProtocol>)weapon;

@end

NS_ASSUME_NONNULL_END
