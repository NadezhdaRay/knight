//
//  KnightInfoController.m
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "KnightInfoController.h"
#import "ChoseListController.h"
#import "KnightInfoCell.h"
#import "Forge.h"
#import "Knight.h"

@interface KnightInfoController () <UITableViewDelegate, UITableViewDataSource, ChoseListProtocol>

@property (weak, nonatomic) IBOutlet UILabel *weaponLabel;
@property (weak, nonatomic) IBOutlet UILabel *helmetLabel;
@property (weak, nonatomic) IBOutlet UILabel *chestLabel;
@property (weak, nonatomic) IBOutlet UILabel *pantsLabel;
@property (weak, nonatomic) IBOutlet UILabel *bootsLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalProtectionLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalAttackLabel;
@property (weak, nonatomic) IBOutlet UITableView *knightInfoTableView;

@property (weak, nonatomic) IBOutlet UILabel *weaponValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *helmetValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *chestValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *pantsValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *bootsValueLabel;

@property (strong, nonatomic) Forge *forge;

@end


@implementation KnightInfoController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Knight Info";
    
    // Do any additional setup after loading the view.
    self.knightInfoTableView.delegate = self;
    self.knightInfoTableView.dataSource = self;
    
    self.knightInfoTableView.tableFooterView = [UIView new];
    [self.knightInfoTableView registerNib:[KnightInfoCell nib] forCellReuseIdentifier:@"KnightInfoCell"];
    
    Forge *forge = [Forge new];
    self.forge = forge;

    self.weaponLabel.text = @"Weapon:";
    self.helmetLabel.text = @"Helmet:";
    self.chestLabel.text = @"Chest:";
    self.pantsLabel.text = @"Pants:";
    self.bootsLabel.text = @"Boots:";
    
    [self updateKnightView];
}

#pragma mark - Updating knight's info view

-(void)updateKnightView {
    self.weaponValueLabel.text = self.knight.weapon.name;
    self.helmetValueLabel.text = self.knight.armor.helmet.name;
    self.chestValueLabel.text = self.knight.armor.chest.name;
    self.pantsValueLabel.text = self.knight.armor.pants.name;
    self.bootsValueLabel.text = self.knight.armor.boots.name;
    self.totalProtectionLabel.text = [NSString stringWithFormat:@"Total protection: %lu", (unsigned long)[self.knight.armor totalProtectionIndex]];
    self.totalAttackLabel.text = [NSString stringWithFormat:@"Total attack: %@", [@(self.knight.weapon.attackIndex) stringValue]];
    
    [self.knightInfoTableView reloadData];
}

#pragma mark - tableView delegates' methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    KnightInfoCell *knightInfoCell = [tableView dequeueReusableCellWithIdentifier:@"KnightInfoCell" forIndexPath:indexPath];

    if (indexPath.row == 0) {
        knightInfoCell.chooseLabel.text = @"Choose weapon:";
        knightInfoCell.chosenValueLabel.text = self.knight.weapon.name;
    }
    
    return knightInfoCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        ChoseListController *choseListController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ChoseListController"];
        choseListController.choseDelegate = self;
        [self.navigationController pushViewController:choseListController animated:YES];
        choseListController.chooseArray = @[[self.forge makePeak], [self.forge makeWarBow], [self.forge makeIronSword], [self.forge makeWeapon]];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - Delegate's realization

-(void)chosenWeapon:(Weapon *)weapon {
    self.knight.weapon = weapon;
    [self updateKnightView];
}

@end
