//
//  Armor.h
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArmorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Armor : NSObject <ArmorProtocol>

@property (nonatomic, strong) id <HelmetProtocol> helmet;
@property (nonatomic, strong) id <ChestProtocol> chest;
@property (nonatomic, strong) id <PantsProtocol> pants;
@property (nonatomic, strong) id <BootsProtocol> boots;

@end

NS_ASSUME_NONNULL_END
