//
//  MOGOpenBookSegue.h
//  MOGMOGOpenBookSegue
//
//  Created by mogmet on 2014/09/02.
//  Copyright (c) 2014年 mogmet. All rights reserved.
//

#import "MOGOpenBookAnimator.h"

@interface MOGOpenBookSegue : UIStoryboardSegue <UIViewControllerTransitioningDelegate, MOGOpenBookSegueAnimatorDelegate>

- (void)setupBookView:(UIImage *)bookImage frame:(CGRect)frame;
- (void)setDurationTime:(NSTimeInterval)duration;
- (void)setCompletionBlock:(MOGOpenBookSegueCompletionBlock)openCompletion closeCompletion:(MOGOpenBookSegueCompletionBlock)closeCompletion;
@end
