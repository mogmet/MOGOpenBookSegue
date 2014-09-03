//
//  MOGViewController.m
//  MOGOpenBookSegue
//
//  Created by mogmet on 09/03/2014.
//  Copyright (c) 2014 mogmet. All rights reserved.
//

#import "MOGViewController.h"
#import <MOGOpenBookSegue/MOGOpenBookSegue.h>

@interface MOGViewController ()

@end

@implementation MOGViewController

- (void)prepareForSegue:(MOGOpenBookSegue *)segue sender:(id)sender {
    [segue setupBookView:self.coverImageButton.imageView.image frame:self.coverImageButton.frame];
    [segue setCompletionBlock:^(BOOL transitionCompleted) {
        NSLog(@"open!");
    } closeCompletion:^(BOOL transitionCompleted) {
        NSLog(@"close!");
    }];
    [super prepareForSegue:segue sender:sender];
}

@end
