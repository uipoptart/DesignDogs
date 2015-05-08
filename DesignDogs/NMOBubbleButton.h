//
//  Copyright (c) 2015 Osten Engineering. All rights reserved.
//

@import UIKit;

IB_DESIGNABLE

@interface NMOBubbleButton : UIButton

@property (strong, nonatomic) IBInspectable UIColor *fillColor;
@property (strong, nonatomic) IBInspectable UIColor *strokeColor;
@property (assign, nonatomic) IBInspectable CGFloat strokeWidth;

@end
