//
//  MOGOpenBookSegue.h
//  MOGMOGOpenBookSegue
//
//  Created by mogmet on 2014/09/02.
//  Copyright (c) 2014年 mogmet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MOGOpenBookSegue : UIStoryboardSegue <UIViewControllerTransitioningDelegate>

- (void)setupBookView:(UIImage *)bookImage frame:(CGRect)frame;
- (void)setDurationTime:(NSTimeInterval)duration;
@end
