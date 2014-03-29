//
//  ViewController.m
//  GeoPointCompass
//
//  Created by Maduranga Edirisinghe on 3/27/14.
//  Copyright (c) 2014 Maduranga Edirisinghe. All rights reserved.
//

#import "ViewController.h"
#import "GeoPointCompass.h"

@interface ViewController ()

@end

@implementation ViewController

GeoPointCompass *geoPointCompass;

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
    
    // Create the image for the compass
    UIImageView *arrowImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    arrowImageView.image = [UIImage imageNamed:@"arrow.png"];
    [self.view addSubview:arrowImageView];
    
    geoPointCompass = [[GeoPointCompass alloc] init];
    
    // Add the image to be used as the compass on the GUI
    [geoPointCompass setArrowImageView:arrowImageView];
    
    // Set the coordinates of the location to be used for calculating the angle
    geoPointCompass.latitudeOfTargetedPoint = 48.858093;
    geoPointCompass.longitudeOfTargetedPoint = 2.294694;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
