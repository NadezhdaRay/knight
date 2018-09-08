//
//  ChoseListCell.m
//  Knight
//
//  Created by Ivan Grigoriev on 04/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "ChoseListCell.h"

@interface ChoseListCell()

//@property (weak, nonatomic) IBOutlet UILabel *chosenValueLabel;

@end

@implementation ChoseListCell

+(UINib *)nib {
    return [UINib nibWithNibName:@"ChoseListCell" bundle:nil];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
