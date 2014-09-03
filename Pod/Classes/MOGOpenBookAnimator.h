//
//  MOGOpenBookAnimator.h
//  MOGOpenBookSegue
//
//  Created by mogmet on 2014/09/02.
//  Copyright (c) 2014年 mogmet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MOGBookView.h"
@interface MOGOpenBookAnimator : NSObject <UIViewControllerAnimatedTransitioning>
@property (nonatomic, assign, getter = isPresenting) BOOL presenting;
@property (strong, nonatomic) MOGBookView *bookView;
@property (nonatomic) NSTimeInterval transitionDuration;
@end
