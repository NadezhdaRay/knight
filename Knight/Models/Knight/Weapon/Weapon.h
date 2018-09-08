//
//  Weapon.h
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeaponProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Weapon : NSObject <WeaponProtocol>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) double price;
@property (nonatomic, assign) NSUInteger attackIndex;

@end

NS_ASSUME_NONNULL_END
