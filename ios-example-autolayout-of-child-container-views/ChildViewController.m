//
//  ChildViewController.m
//  ios-example-autolayout-of-child-container-views
//
//  Created by Murray Cumming on 23/06/2015.
//  Copyright (c) 2015 Murray Cumming. All rights reserved.
//

#import "ChildViewController.h"

@interface ChildViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.label.text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dapibus congue nisi et sagittis. Suspendisse et purus mi. Phasellus vel pretium ex, et consequat est. Vivamus non hendrerit lorem. Fusce scelerisque posuere eros vel feugiat. Vivamus quam lectus, laoreet at tincidunt non, vulputate a metus. Duis id nunc feugiat, commodo arcu ut, fermentum sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec ut mauris id sapien posuere rhoncus. Nunc vel nisl est";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
