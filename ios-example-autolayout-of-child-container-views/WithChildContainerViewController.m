//
//  WithChildContainerViewController.m
//  ios-example-autolayout-of-child-container-views
//
//  Created by Murray Cumming on 22/06/2015.
//  Copyright (c) 2015 Murray Cumming. All rights reserved.
//

#import "WithChildContainerViewController.h"
#import "ChildViewController.h"

@interface WithChildContainerViewController ()  {
    ChildViewController *_childController;
}

@property (weak, nonatomic) IBOutlet UIView *containerView;
@end

@implementation WithChildContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    _childController = [self.storyboard instantiateViewControllerWithIdentifier:@"childViewController"];
    [self.containerView addSubview:_childController.view];

    _childController.view.frame= self.containerView.bounds;

    UIView *subView = _childController.view;
    UIView *parent = self.containerView;

    //add constraints
    subView.translatesAutoresizingMaskIntoConstraints=NO;

    NSLayoutConstraint *width = [NSLayoutConstraint
                                 constraintWithItem:subView
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:0
                                 toItem:parent
                                 attribute:NSLayoutAttributeWidth
                                 multiplier:1.0
                                 constant:0];
    NSLayoutConstraint *height = [NSLayoutConstraint
                                  constraintWithItem:subView
                                  attribute:NSLayoutAttributeHeight
                                  relatedBy:0
                                  toItem:parent
                                  attribute:NSLayoutAttributeHeight
                                  multiplier:1.0
                                  constant:0];
    NSLayoutConstraint *top = [NSLayoutConstraint
                               constraintWithItem:subView
                               attribute:NSLayoutAttributeTop
                               relatedBy:NSLayoutRelationEqual
                               toItem:parent
                               attribute:NSLayoutAttributeTop
                               multiplier:1.0f
                               constant:0.f];

    NSLayoutConstraint *leading = [NSLayoutConstraint
                                   constraintWithItem:subView
                                   attribute:NSLayoutAttributeLeading
                                   relatedBy:NSLayoutRelationEqual
                                   toItem:parent
                                   attribute:NSLayoutAttributeLeading
                                   multiplier:1.0f
                                   constant:0.f];
    [parent addConstraint:width];
    [parent addConstraint:height];
    [parent addConstraint:top];
    [parent addConstraint:leading];
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
