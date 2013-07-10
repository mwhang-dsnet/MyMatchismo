//
//  CardGameViewController.m
//  MyMatchismo
//
//  Created by Michael Whang on 7/8/13.
//  Copyright (c) 2013 Devolution Studios. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()

@property (strong, nonatomic) PlayingCardDeck *myDeck;
@property (nonatomic) int flipCount;

@end

@implementation CardGameViewController

- (PlayingCardDeck *)myDeck
{
    if (!_myDeck) {
       _myDeck = [[PlayingCardDeck alloc] init];
    }
    return _myDeck;
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];	
}

- (IBAction)flipCard:(UIButton *)sender {
    // Is the front of the card currently showing? If not, then draw from myDeck
    if (!sender.isSelected) {    
        Card *myCard = [self.myDeck drawRandomCard];
        [sender setTitle:myCard.contents forState:UIControlStateSelected];
        NSLog(@"Card Contents: %@", myCard.contents);
        self.flipCount++;
    }
    sender.selected = !sender.isSelected;
}

@end
