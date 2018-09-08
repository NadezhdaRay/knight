//
//  Armor.m
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "Armor.h"

@implementation Armor

-(NSUInteger)totalProtectionIndex {
    return self.helmet.protectionIndex + self.chest.protectionIndex + self.pants.protectionIndex + self.boots.protectionIndex;
}

@end
