//
//  ChoseListController.h
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Weapon.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ChoseListProtocol <NSObject>

-(void)chosenWeapon:(Weapon *)weapon;

@end


@interface ChoseListController : UIViewController

@property (weak, nonatomic) id <ChoseListProtocol> choseDelegate;
@property (strong, nonatomic) NSArray *chooseArray;

@end

NS_ASSUME_NONNULL_END
