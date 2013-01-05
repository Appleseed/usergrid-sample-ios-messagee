//
//  TabBarController.m
//  Messagee
//
//  Created by Rod Simpson on 12/28/12.
//  Copyright (c) 2012 Rod Simpson. All rights reserved.
//

#import "TabBarController.h"


@interface TabBarController ()

@end

@implementation TabBarController

@synthesize selectedView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    if ([selectedView isEqualToString:@"FOLLOWING"]) {
        self.selectedViewController = [[self viewControllers] objectAtIndex:1];
        selectedView = @"";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setClient:(Client *)inclient {
    //self.client = inclient;
    Client * client = inclient;
    
    [[[self viewControllers] objectAtIndex:0] setClient: client];
    [[[self viewControllers] objectAtIndex:1] setClient: client];

}

- (void)setNextViewToFollowing {
    selectedView = @"FOLLOWING"; 
}
@end
