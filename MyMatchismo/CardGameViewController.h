//
//  CardGameViewController.h
//  MyMatchismo
//
//  Created by Michael Whang on 7/8/13.
//  Copyright (c) 2013 Devolution Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardGameViewController : UIViewController

- (IBAction)flipCard:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;


@end
