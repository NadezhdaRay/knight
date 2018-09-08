//
//  Helmet.h
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HelmetProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Helmet : NSObject <HelmetProtocol>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) double price;
@property (nonatomic, assign) NSUInteger protectionIndex;

@end

NS_ASSUME_NONNULL_END
