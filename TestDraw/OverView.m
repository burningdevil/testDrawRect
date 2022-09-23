//
//  OverView.m
//  TestDraw
//
//  Created by Wang, Kai on 2022/9/23.
//

#import "OverView.h"

@implementation OverView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSDate* date = [NSDate date];
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    int times = 1e7;
    
    for (int i=0; i<times; i++) {
        CGContextSetLineWidth(ctx, 1);
        
        CGContextSetRGBStrokeColor(ctx, 1, 1, 1, 1);
        CGContextBeginPath(ctx);
        
        CGPoint ori = CGPointMake(0, 0);
        CGContextMoveToPoint(ctx, ori.x, ori.y);
        CGContextAddLineToPoint(ctx, 100, 100);
        
        CGContextDrawPath(ctx, kCGPathStroke);
    }
    NSLog(@"time spent draw line is %f", [[NSDate date] timeIntervalSinceDate:date]);
    
    date = [NSDate date];
    for (int i=0; i<times; i++) {
        CGContextSetLineWidth(ctx, 1);
        
        CGContextSetRGBFillColor(ctx, 1, 1, 0, 1);
        CGContextBeginPath(ctx);
        
        CGContextFillRect(ctx, CGRectMake(0, 0, 100, 100));
    }
    NSLog(@"time spent draw rect is %f", [[NSDate date] timeIntervalSinceDate:date]);
}


@end
