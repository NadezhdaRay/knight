//
//  Garrison.h
//  Knight
//
//  Created by Ivan Grigoriev on 05/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Knight.h"
#import "Forge.h"

NS_ASSUME_NONNULL_BEGIN

@interface Garrison : NSObject

@property (nonatomic, strong) Forge *forge;

-(Knight *)makeKnightWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
