//
// Created by kenny on 1/12/22.
// Copyright (c) 2022 In A Day Development. All rights reserved.
//

#import "TestTableViewController.h"


@implementation TestTableViewController

- (void) awakeFromNib {
	[super awakeFromNib];
	
	if (@available(iOS 15.0, *)) {
		UINavigationBarAppearance *appearance = [UINavigationBarAppearance new];
		[appearance configureWithOpaqueBackground];
		appearance.backgroundColor = [UIColor systemBlueColor];
		
		self.navigationItem.standardAppearance = appearance;
		self.navigationItem.compactAppearance = appearance;
		self.navigationItem.scrollEdgeAppearance = appearance;
		self.navigationItem.compactScrollEdgeAppearance = appearance;
	}
}


- (void) viewDidLoad {
	[super viewDidLoad];

	// if (@available(iOS 15.0, *)) {
	// 	[self.tableView setSectionHeaderTopPadding:0.0f];
	// } else {
	// 	self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, CGFLOAT_MIN)];
	// }

	// self.tableView = [[UITableView alloc] initWithFrame:self.tableView.frame style:UITableViewStyleGrouped];
	[self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"Cell"];
	
	/*
	UINavigationBarAppearance *appearance = [UINavigationBarAppearance new];
	[appearance configureWithOpaqueBackground];
	appearance.backgroundColor = [UIColor systemPurpleColor];
	
	self.navigationItem.standardAppearance = appearance;
	self.navigationItem.compactAppearance = appearance;
	self.navigationItem.scrollEdgeAppearance = appearance;
	self.navigationItem.compactScrollEdgeAppearance = appearance;
	*/
}

- (void) viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];

	UIView *currentview = self.view;
	while ( currentview != nil) {
		NSLog(@"%@<%p>", NSStringFromClass(currentview.class), currentview);
		currentview = currentview.superview;

	}
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
	return 3;
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
		case 0: return @"First Section";
		case 1: return @"Second Section";
		default: return @"Third Section";
	}
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexpath {

	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexpath];

	cell.textLabel.text = [NSString stringWithFormat:@"Cell [%ld - %ld]", indexpath.section, indexpath.row];

	return cell;
}


@end
