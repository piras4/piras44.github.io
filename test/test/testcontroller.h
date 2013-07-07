//
//  testcontroller.h
//  test
//
//  Created by hh on 2013/04/06.
//  Copyright (c) 2013年 hh. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface testcontroller : NSView {
    //.hの方に入れる
    float x,y,r; //円を描く
    //.hに
    int col;
}

-(IBAction) colorChange:(id)sender;

@end
