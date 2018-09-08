//
//  ChoseKnightController.m
//  Knight
//
//  Created by Ivan Grigoriev on 04/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "ChoseKnightController.h"
#import "KnightInfoController.h"
#import "ChoseKnightCell.h"
#import "Garrison.h"
#import "Knight.h"
#import "Forge.h"

@interface ChoseKnightController ()

@property (weak, nonatomic) IBOutlet UITableView *knightListTableView;
@property (strong, nonatomic) Knight *knight;
@property (strong, nonatomic) Forge *forge;
@property (strong, nonatomic) Garrison *garrison;

@end

@implementation ChoseKnightController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Choose your knight!";
    [self.knightListTableView registerNib:[ChoseKnightCell nib] forCellReuseIdentifier:@"ChoseKnightCell"];
    
    Forge *forge = [Forge new];
    Garrison *garrison = [Garrison new];
    
    self.forge = forge;
    self.garrison = garrison;
    
//    Knight *knight1 = [[Knight alloc] initWithName:@"Richard" armor:[self.forge makeArmor] weapon:[self.forge makePeak]];
//    Knight *knight2 = [[Knight alloc] initWithName:@"John" armor:[self.forge makeArmor] weapon:[self.forge makeWarBow]];
//    Knight *knight3 = [[Knight alloc] initWithName:@"Garold" armor:[self.forge makeArmor] weapon:[self.forge makeIronSword]];
//    Knight *knight4 = [[Knight alloc] initWithName:@"Roland" armor:[self.forge makeArmor] weapon:[self.forge makeWeapon]];
    
//    self.chooseKnightArray = @[knight1, knight2, knight3, knight4];
    self.chooseKnightArray = @[[self.garrison makeKnightWithName:@"Richard"],
                               [self.garrison makeKnightWithName:@"John"],
                               [self.garrison makeKnightWithName:@"Garold"],
                               [self.garrison makeKnightWithName:@"Roland"]];
}

#pragma mark - tableView delegates' methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.chooseKnightArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ChoseKnightCell *choseKnightCell = [tableView dequeueReusableCellWithIdentifier:@"ChoseKnightCell" forIndexPath:indexPath];
    
    Knight *knight = self.chooseKnightArray[indexPath.row];
    choseKnightCell.knightNameLabel.text = knight.name;
    
    return choseKnightCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    KnightInfoController *knightInfoController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"KnightInfoController"];
    knightInfoController.knight = self.chooseKnightArray[indexPath.row];
    
    [self.navigationController pushViewController:knightInfoController animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

@end
