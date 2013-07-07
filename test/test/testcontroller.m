//
//  testcontroller.m
//  test
//
//  Created by hh on 2013/04/06.
//  Copyright (c) 2013年 hh. All rights reserved.
//

#import "testcontroller.h"

@implementation testcontroller

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        x=200;
        y=200;
        r=10;
        col = 1;
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
    NSRect bounds = [self bounds];
    [[NSColor whiteColor] set];
    NSRectFill(bounds); //画面は白に
    
    //drawrectの色のセットに
    if (col==1) {
        [[NSColor redColor] set];
    } else {
        [[NSColor blueColor] set];
    }
    //円の描画
    
    NSBezierPath *thePath = [NSBezierPath bezierPath];
    [thePath appendBezierPath:[NSBezierPath bezierPathWithOvalInRect:NSMakeRect(x-r,y-r,2*r,2*r)]];

    [thePath stroke];

}

//ピンチインの時の処理
- (void)magnifyWithEvent:(NSEvent *)event
{
    float em;
    em=[event magnification];
    r=r+em*100;
    [self setNeedsDisplay:YES];
}

//スワイプの時の処理
- (void)scrollWheel:(NSEvent *)event
{
    x = x + [event scrollingDeltaX]/10;
    y = y - [event scrollingDeltaY]/10;
    [self setNeedsDisplay:YES];
}

-(IBAction) colorChange:(id)sender {
    col=3-col;
    [self setNeedsDisplay:YES];
}

@end
