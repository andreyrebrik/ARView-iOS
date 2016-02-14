// ARView.m
// The MIT License (MIT)
//
// Copyright (c) 2016 Andrey Rebrik
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#import "ARShapeView.h"

@interface ARShapeView()
{
    UIColor *savedBackgroundColor;
}

@end

@implementation ARShapeView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self setupView];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        [self setupView];
    }
    
    return self;
}

- (void)setupView
{
    
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    
    [self setNeedsDisplay];
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    _borderWidth = borderWidth;
    
    [self setNeedsDisplay];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    
    [self setNeedsDisplay];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    savedBackgroundColor = backgroundColor;
    [super setBackgroundColor:[UIColor clearColor]];
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextFillRect(context, rect);
    
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, _borderWidth / 2.0f, _cornerRadius + _borderWidth / 2.0f);
    CGContextAddArc(context, _cornerRadius, _cornerRadius, _cornerRadius - _borderWidth / 2.0f, M_PI, -M_PI_2, 0);
    CGContextAddLineToPoint(context, rect.size.width - _cornerRadius - _borderWidth / 2.0f,  _borderWidth / 2.0f);
    CGContextAddArc(context, rect.size.width - _cornerRadius, _cornerRadius, _cornerRadius - _borderWidth / 2.0f, -M_PI_2, 0, 0);
    CGContextAddLineToPoint(context, rect.size.width - _borderWidth / 2.0f, rect.size.height - _cornerRadius - _borderWidth / 2.0f);
    CGContextAddArc(context, rect.size.width - _cornerRadius, rect.size.height - _cornerRadius, _cornerRadius - _borderWidth / 2.0f, 0, M_PI_2, 0);
    CGContextAddLineToPoint(context, _cornerRadius + _borderWidth / 2.0f, rect.size.height - _borderWidth / 2.0f);
    CGContextAddArc(context, _cornerRadius, rect.size.height - _cornerRadius, _cornerRadius - _borderWidth / 2.0f, M_PI_2, M_PI, 0);
    CGContextClosePath(context);
    
    CGContextSetFillColorWithColor(context, savedBackgroundColor.CGColor);
    CGContextFillPath(context);
    
    CGContextSetLineWidth(context, _borderWidth);
    
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, _borderWidth / 2.0f, _cornerRadius + _borderWidth / 2.0f);
    CGContextAddArc(context, _cornerRadius, _cornerRadius, _cornerRadius - _borderWidth / 2.0f, M_PI, -M_PI_2, 0);
    CGContextAddLineToPoint(context, rect.size.width - _cornerRadius - _borderWidth / 2.0f,  _borderWidth / 2.0f);
    CGContextAddArc(context, rect.size.width - _cornerRadius, _cornerRadius, _cornerRadius - _borderWidth / 2.0f, -M_PI_2, 0, 0);
    CGContextAddLineToPoint(context, rect.size.width - _borderWidth / 2.0f, rect.size.height - _cornerRadius - _borderWidth / 2.0f);
    CGContextAddArc(context, rect.size.width - _cornerRadius, rect.size.height - _cornerRadius, _cornerRadius - _borderWidth / 2.0f, 0, M_PI_2, 0);
    CGContextAddLineToPoint(context, _cornerRadius + _borderWidth / 2.0f, rect.size.height - _borderWidth / 2.0f);
    CGContextAddArc(context, _cornerRadius, rect.size.height - _cornerRadius, _cornerRadius - _borderWidth / 2.0f, M_PI_2, M_PI, 0);
    CGContextClosePath(context);
    
    [_borderColor setStroke];
    CGContextStrokePath(context);
    
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, _borderWidth / 2.0f, _cornerRadius + _borderWidth / 2.0f);
    CGContextAddArc(context, _cornerRadius, _cornerRadius, _cornerRadius - _borderWidth / 2.0f, M_PI, -M_PI_2, 0);
    CGContextAddLineToPoint(context, rect.size.width - _cornerRadius - _borderWidth / 2.0f,  _borderWidth / 2.0f);
    CGContextAddArc(context, rect.size.width - _cornerRadius, _cornerRadius, _cornerRadius - _borderWidth / 2.0f, -M_PI_2, 0, 0);
    CGContextAddLineToPoint(context, rect.size.width - _borderWidth / 2.0f, rect.size.height - _cornerRadius - _borderWidth / 2.0f);
    CGContextAddArc(context, rect.size.width - _cornerRadius, rect.size.height - _cornerRadius, _cornerRadius - _borderWidth / 2.0f, 0, M_PI_2, 0);
    CGContextAddLineToPoint(context, _cornerRadius + _borderWidth / 2.0f, rect.size.height - _borderWidth / 2.0f);
    CGContextAddArc(context, _cornerRadius, rect.size.height - _cornerRadius, _cornerRadius - _borderWidth / 2.0f, M_PI_2, M_PI, 0);
    CGContextClosePath(context);
}

@end
