//
//  TestTableViewController.m
//  wtfSB
//
//  Created by Don Mag on 1/24/22.
//

#import "TestTableViewController.h"

@interface TestTableViewController ()

@end

@implementation TestTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

	[self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"Cell"];

	if (@available(iOS 15.0, *)) {
		UINavigationBarAppearance *appearance = [UINavigationBarAppearance new];
		//[appearance configureWithOpaqueBackground];
		//appearance.backgroundColor = [UIColor systemBlueColor];
		appearance.backgroundColor = [UIColor colorWithRed:0.0 green:0.25 blue:1.0 alpha:0.25];

		self.navigationItem.standardAppearance = appearance;
		self.navigationItem.compactAppearance = appearance;
		self.navigationItem.scrollEdgeAppearance = appearance;
		self.navigationItem.compactScrollEdgeAppearance = appearance;
	}
	
	//self.tableView.sectionHeaderTopPadding = 40;

}

#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
	return 13;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	switch(section) {
		case 0: return 3;
		case 1: return 5;
		default: return 2;
	}
}


- (nullable NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	switch(section) {
		case 0: return @"SB First Section";
		case 1: return @"SB Second Section";
		case 2: return @"SB Third Section";
		default: return [NSString stringWithFormat:@"SB Section %ld", section];
	}
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexpath {
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexpath];
	
	cell.textLabel.text = [NSString stringWithFormat:@"SB Cell [%ld - %ld]", indexpath.section, indexpath.row];
	
	return cell;
}

@end
