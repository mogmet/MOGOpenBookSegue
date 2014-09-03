//
//  MOGBookView.h
//  MOGOpenBookSegue
//
//  Created by mogmet on 2014/09/02.
//  Copyright (c) 2014年 mogmet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MOGBookView : UIView

@property (nonatomic) UIView *cover;
@property (nonatomic) UIView *content;

- (void)setupBookCoverImage:(UIImage *)image;

@end
