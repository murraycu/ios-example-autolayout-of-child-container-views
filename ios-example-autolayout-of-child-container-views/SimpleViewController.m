//
//  ViewController.m
//  ios-example-autolayout-of-child-container-views
//
//  Created by Murray Cumming on 22/06/2015.
//  Copyright (c) 2015 Murray Cumming. All rights reserved.
//

#import "SimpleViewController.h"

@interface SimpleViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation SimpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.label.text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dapibus congue nisi et sagittis. Suspendisse et purus mi. Phasellus vel pretium ex, et consequat est. Vivamus non hendrerit lorem. Fusce scelerisque posuere eros vel feugiat. Vivamus quam lectus, laoreet at tincidunt non, vulputate a metus. Duis id nunc feugiat, commodo arcu ut, fermentum sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec ut mauris id sapien posuere rhoncus. Nunc vel nisl est";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
