//
//  ChoseListCell.h
//  Knight
//
//  Created by Ivan Grigoriev on 04/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChoseListCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *chosenValueLabel;

+(UINib *)nib;

@end

NS_ASSUME_NONNULL_END
