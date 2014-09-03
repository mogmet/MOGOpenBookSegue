//
//  MOGOpenBookSegue.m
//  MOGMOGOpenBookSegue
//
//  Created by mogmet on 2014/09/02.
//  Copyright (c) 2014年 mogmet. All rights reserved.
//

#import "MOGOpenBookSegue.h"

@implementation MOGOpenBookSegue
{
    MOGOpenBookAnimator *animator;
}

/**
 *  performがおわるとdeallocされてカバーviewや中心点がわからなくなるのでシングルトンで初期化
 *
 *  @param identifier
 *  @param source
 *  @param destination
 *
 *  @return MOGOpenBookSegue
 */
- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination {
    static MOGOpenBookSegue *sharedManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [super initWithIdentifier:identifier source:source destination:destination];
        animator = [MOGOpenBookAnimator new];
    });
    return sharedManager;
}

/**
 *  アニメーションはUIViewControllerTransitionに委譲
 */
- (void)perform {
    UIViewController *destinationViewController = self.destinationViewController;
    UIViewController *sourceViewController = self.sourceViewController;
    destinationViewController.transitioningDelegate = self;
    destinationViewController.modalPresentationStyle = UIModalPresentationCustom;
    [sourceViewController presentViewController:destinationViewController animated:YES completion:nil];
}

/**
 *  カバーの設定
 *
 *  @param bookImage 開く画像を指定
 *  @param frame     開く元の画像の位置
 */
- (void)setupBookView:(UIImage *)bookImage frame:(CGRect)frame {
    animator.bookView = [[MOGBookView alloc] initWithFrame:frame];
    [animator.bookView setupBookCoverImage:bookImage];
}

/**
 *  アニメーション時間の設定
 *
 *  @param duration
 */
- (void)setDurationTime:(NSTimeInterval)duration {
    animator.transitionDuration = duration;
}

/**
 *  アニメ終了時のblockを設定
 *
 *  @param openCompletion     openしおわったあとのblock
 *  @param closeCompletion closeしおわったあとのblock
 */
- (void)setCompletionBlock:(MOGOpenBookSegueCompletionBlock)openCompletion closeCompletion:(MOGOpenBookSegueCompletionBlock)closeCompletion {
    animator.openCompletion = openCompletion;
    animator.closeCompletion = closeCompletion;
}

#pragma mark - UIViewControllerTransitioningDelegate Methods

/**
 *  開く時
 *
 *  @param presented
 *  @param presenting
 *  @param source
 *
 *  @return MOGOpenBookAnimator
 */
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                   presentingController:(UIViewController *)presenting
                                                                       sourceController:(UIViewController *)source {
    
    animator.presenting = YES;
    return animator;
}

/**
 *  閉じる時
 *
 *  @param dismissed
 *
 *  @return MOGOpenBookAnimator
 */
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    animator.presenting = NO;
    return animator;
}
@end
