GeoPointCompass
===============

This iOS Xcode project shows how to create a simple compass that points at the direction to a custom geo location 
that you can specify with latitude and longitude.

Import GeoPointCompass.h, GeoPointCompass.m and the arrow.png image to your project (or you can provide your own image
for the compass. You will need to add 

Usage
=====

//Create the image for the compass
UIImageView *arrowImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
arrowImageView.image = [UIImage imageNamed:@"arrow.png"];
[self.view addSubview:arrowImageView];
    
geoPointCompass = [[GeoPointCompass alloc] init];
    
// Set the arrowImageView to be used as the compass image
[geoPointCompass setArrowImageView:arrowImageView];
    
// Set coordinates of the location to be used for calculating the angle
geoPointCompass.latitudeOfTargetedPoint = 48.858093;
geoPointCompass.longitudeOfTargetedPoint = 2.294694;
