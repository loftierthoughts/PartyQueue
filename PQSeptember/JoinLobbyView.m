//
//  JoinLobbyView.m
//  PQSeptember
//
//  Created by April Blaine on 9/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "JoinLobbyView.h"

@implementation JoinLobbyView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)backButtonPushed:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:PQSceneChangeRequestedNotification object:self userInfo:[NSDictionary dictionaryWithObject:startTabsString forKey:requestedSceneString]];
}

- (IBAction)hostLobbyButtonPushed:(id)sender
{
    NSArray *objects = [NSArray arrayWithObjects:hostLobbyString, [NSNumber numberWithInt:UIViewAnimationTransitionFlipFromLeft], nil];
    NSArray *keys = [NSArray arrayWithObjects:requestedSceneString,transitionStyleString, nil];
    NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objects forKeys:keys];
    [[NSNotificationCenter defaultCenter] postNotificationName:PQSceneChangeRequestedNotification object:self userInfo:userInfo];
}

@end
