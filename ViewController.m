//
//  ViewController.m
//  Showcase JCCC
//
//  Created by Sam on 4/16/15.
//  Copyright (c) 2015 BFG-BetterFamilyGaming. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//Uses the iCarousel library to make a coverflow of buttons
@synthesize carousel;

- (void)dealloc
{
    carousel.delegate = nil;
    carousel.dataSource = nil;
}

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /*Configure Carousel look.
     iCarouselTypeLinear
     iCarouselTypeRotary
     iCarouselTypeInvertedRotary
     iCarouselTypeCylinder
     iCarouselTypeInvertedCylinder
     iCarouselTypeWheel
     iCarouselTypeInvertedWheel
     iCarouselTypeCoverFlow
     iCarouselTypeCoverFlow2
     iCarouselTypeTimeMachine
     iCarouselTypeInvertedTimeMachine
     */
    
    carousel.type = iCarouselTypeCoverFlow;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.carousel = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}


//Sets how many buttons are in Carousel. If you are adding a button for a department
//you need to up the return number
- (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    
    return 4;
}

//Setting the department images to the buttons. The buttons and the images are in
//arrays. Remember to start at 0 when using the numbers
- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
    NSMutableArray *menuItems = [NSMutableArray arrayWithObjects:
                                 @"cisButtonImage.png",
                                 @"entrepreneurshipIcon.png",
                                 @"interiorDesignButton.png",
                                 @"studentsIcon.png",
                                 nil];
    //Creating a array with the department names.Put in the same order as the
    //images
    NSArray *labelNames = [NSArray arrayWithObjects:@"Computer System Information", @"Entrepreneurship", @"Interior Design", @"Students", nil];
    
    UIButton *button = (UIButton *)view;
    
    if (button == nil)
    {
        //no button available to recycle, so create new one
        UIImage *image = [UIImage imageNamed:[menuItems objectAtIndex:index]];
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(0.0f, 0.0f, image.size.width, image.size.height);
        //[button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setBackgroundImage:image forState:UIControlStateNormal];
        //button.titleLabel.font = [button.titleLabel.font fontWithSize:50];
        [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchDown];
        
       
    }
    
    //Setting the labels under the buttons using the department names array
    [button setTitle:labelNames[index] forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [button setTitleColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:1.0] forState:UIControlStateNormal];
    button.contentVerticalAlignment = UIControlContentVerticalAlignmentBottom;
    button.contentEdgeInsets = UIEdgeInsetsMake(0, 0, -30, 0);
    
    
    return button;
}

//Define what happens when a button on the Carousel is tapped
- (void)buttonTapped:(UIButton *)sender
{
    //Get item index for button from the array
    NSInteger index = [carousel indexOfItemViewOrSubview:sender];
    
    //Depending on what button is tapped determines which segue it calls
    if (index == 0) {
        [self performSegueWithIdentifier:@"cisSeg" sender:self];
    } else if (index == 1) {
        [self performSegueWithIdentifier:@"entSeg" sender:self];
    } else if (index == 2) {
        [self performSegueWithIdentifier:@"intSeg" sender:self];
    } else {
        [self performSegueWithIdentifier:@"stuSeg" sender:self];
    }
}

@end
