//
//  NavController.m
//  wtf
//
//  Created by kenny on 1/22/22.
//

#import "NavController.h"

@interface NavController ()

@end

@implementation NavController

- (void) awakeFromNib {
	[super awakeFromNib];
	
	if (@available(iOS 15.0, *)) {
		UINavigationBarAppearance *appearance = [UINavigationBarAppearance new];
		[appearance configureWithOpaqueBackground];
		appearance.backgroundColor = [UIColor systemMintColor];
		
		self.navigationBar.standardAppearance = appearance;
		self.navigationBar.compactAppearance = appearance;
		self.navigationBar.scrollEdgeAppearance = appearance;
		self.navigationBar.compactScrollEdgeAppearance = appearance;
		
		//[self setNeedsStatusBarAppearanceUpdate];
	}
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	if (@available(iOS 15.0, *)) {
		UINavigationBarAppearance *appearance = [UINavigationBarAppearance new];
		[appearance configureWithOpaqueBackground];
		appearance.backgroundColor = [UIColor systemPinkColor];
		
		self.navigationBar.standardAppearance = appearance;
		self.navigationBar.compactAppearance = appearance;
		self.navigationBar.scrollEdgeAppearance = appearance;
		self.navigationBar.compactScrollEdgeAppearance = appearance;
		
		//[self setNeedsStatusBarAppearanceUpdate];
	}
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
