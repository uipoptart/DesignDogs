//
//  Copyright (c) 2015 Osten Engineering. All rights reserved.
//

#import "NMOBubbleButton.h"

@implementation NMOBubbleButton

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.translatesAutoresizingMaskIntoConstraints = NO;
    }
    
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGRect bounds = self.layer.bounds;
    CGFloat lineWidth = self.strokeWidth;
    CAShapeLayer *circleLayer = [CAShapeLayer layer];
    circleLayer.bounds = bounds;
    [self.layer insertSublayer:circleLayer atIndex:0];
    
    CGRect ovalRect = CGRectOffset(bounds, bounds.size.width / 2, bounds.size.height / 2);
    ovalRect = CGRectInset(ovalRect, lineWidth / 2, lineWidth / 2);
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
    
    circleLayer.path = circle.CGPath;
    circleLayer.fillColor = self.fillColor.CGColor;
    circleLayer.strokeColor = self.strokeColor.CGColor;
    circleLayer.lineWidth = lineWidth;
}

- (CGSize)intrinsicContentSize
{
    CGSize boundsSize = self.bounds.size;

    return CGSizeMake(boundsSize.width, boundsSize.width); //make it round
}

@end
