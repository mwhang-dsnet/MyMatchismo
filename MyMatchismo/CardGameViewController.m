//
//  CardGameViewController.m
//  MyMatchismo
//
//  Created by Michael Whang on 7/8/13.
//  Copyright (c) 2013 Devolution Studios. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@end

@implementation CardGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];	
}

- (IBAction)flipCard:(UIButton *)sender {
    sender.selected = !sender.isSelected;
    self.flipCount++;
}



@end
