//
//  ChoseListController.m
//  Knight
//
//  Created by Ivan Grigoriev on 03/09/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "ChoseListController.h"
#import "ChoseListCell.h"
#import "Weapon.h"

@interface ChoseListController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *chosenTableView;

@end

@implementation ChoseListController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Choose your weapon!";
    
    [self.chosenTableView registerNib:[ChoseListCell nib] forCellReuseIdentifier:@"ChoseListCell"];
}

#pragma mark - tableView delegates' methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.chooseArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ChoseListCell *choseListCell = [tableView dequeueReusableCellWithIdentifier:@"ChoseListCell" forIndexPath:indexPath];
    
    Weapon *weapon = self.chooseArray[indexPath.row];
    choseListCell.chosenValueLabel.text = weapon.name;
    
    return choseListCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Weapon *weapon = self.chooseArray[indexPath.row];
    [self.choseDelegate chosenWeapon:weapon];
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
