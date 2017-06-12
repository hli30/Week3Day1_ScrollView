//
//  MyScrollView.m
//  ScrollView
//
//  Created by Harry Li on 2017-06-12.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView()


@end

@implementation MyScrollView



-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(viewPanned:)];
    [self addGestureRecognizer:panGesture];
    
    _contentSize = CGSizeMake(self.frame.size.width, 750);
    
    return self;
}


- (void)viewPanned:(UIPanGestureRecognizer *)sender{
    
    CGPoint translationInView = [sender translationInView:self];
    CGRect bound = self.bounds;
    CGFloat padding = 20.0;
    
    CGFloat yMovement = self.bounds.origin.y - translationInView.y;
    CGFloat maxY = self.contentSize.height - self.frame.size.height + padding;
    CGFloat minY = 0.0;
    
    if (yMovement < maxY && yMovement >= minY) {
        bound.origin.y -= translationInView.y;
        self.bounds = bound;
    }
   
    NSLog(@"bound.y = %f",bound.origin.y);
    [sender setTranslation:CGPointZero inView:self];
}

@end
