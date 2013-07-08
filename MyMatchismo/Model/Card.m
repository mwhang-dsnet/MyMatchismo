//
//  Card.m
//  MyMatchismo
//
//  Created by Michael Whang on 7/8/13.
//  Copyright (c) 2013 Devolution Studios. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards;
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
