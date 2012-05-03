//
//  C4WorkSpace.m
//  MyNewProject
//
//  Created by Travis Kirton on 12-04-02.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4WorkSpace.h"

@interface C4WorkSpace ()
-(void)methodToRunImmediately;
@end

@implementation C4WorkSpace {
    C4Shape *b1, *b2, *b3, *b4, *b5, 
    *p1, 
    *s1, *s2, *s3, *s4, *s5, *s6, 
    *c1, *c2, *c3, *c4, *c5,
    *text1, *text2, *text3, *text4;
    CGPoint shapesCenter;
    
    C4Font *font;
}

-(void)setup {
    
    
    p1 = [C4Shape rect:CGRectMake(0, 0, 786, 1024)];
    p1.fillColor=[UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0];     
    p1.lineWidth = 0.0f;
    p1.userInteractionEnabled = NO;
    [self addShape:p1];
    
    
    
    
    s1 = [C4Shape ellipse:CGRectMake(220, 400, 50, 50)];
    s1.fillColor= [UIColor colorWithRed:250/255.0 green:250/255.0 blue:240/255.0 alpha:1.0];     
    s1.strokeColor = [UIColor colorWithRed:225/255.0 green:225/255.0 blue:224/255.0 alpha:0.5]; 
    
    s2 = [C4Shape ellipse:CGRectMake(270, 300, 50, 50)];
    s2.fillColor= [UIColor colorWithRed:250/255.0 green:250/255.0 blue:240/255.0 alpha:0.7];  
    s2.strokeColor = [UIColor colorWithRed:225/255.0 green:225/255.0 blue:224/255.0 alpha:0.5]; 
    
    s3 = [C4Shape ellipse:CGRectMake(400, 300, 50, 50)];
    s3.fillColor= [UIColor colorWithRed:250/255.0 green:250/255.0 blue:240/255.0 alpha:0.5];  
    s3.strokeColor = [UIColor colorWithRed:225/255.0 green:225/255.0 blue:224/255.0 alpha:0.3]; 
    
    s4 = [C4Shape ellipse:CGRectMake(460, 400, 50, 50)];
    s4.fillColor= [UIColor colorWithRed:250/255.0 green:250/255.0 blue:240/255.0 alpha:0.3];     
    s4.strokeColor = [UIColor colorWithRed:225/255.0 green:225/255.0 blue:224/255.0 alpha:0.2]; 
    
    s5 = [C4Shape ellipse:CGRectMake(400, 500, 50, 50)];
    s5.fillColor= [UIColor colorWithRed:250/255.0 green:250/255.0 blue:240/255.0 alpha:0.2];      
    s5.strokeColor = [UIColor colorWithRed:225/255.0 green:225/255.0 blue:224/255.0 alpha:0.2]; 
    
    s6 = [C4Shape ellipse:CGRectMake(270, 500, 50, 50)];
    s6.fillColor= [UIColor colorWithRed:250/255.0 green:250/255.0 blue:240/255.0 alpha:0.0];    
    s6.strokeColor = [UIColor colorWithRed:225/255.0 green:225/255.0 blue:224/255.0 alpha:0.2]; 
    s6.lineWidth = 1.0f;
    
    
    shapesCenter = CGPointMake(360, 425);
    
    
    s1.layer.anchorPoint = CGPointMake((360.0f-220.0f)/50.0f,(425.0f-400.0f)/50.0f);
    [self addShape:s1];
    
    
    s2.layer.anchorPoint = CGPointMake((360.0f-270.0f)/50.0f,(425.0f-300.0f)/50.0f);
    [self addShape:s2];
    
    s3.layer.anchorPoint = CGPointMake((360.0f-400)/50.0f,(425.0f-300)/50.0f);
    [self addShape:s3];
    
    s4.layer.anchorPoint = CGPointMake((360.0f-460)/50.0f,(425.0f-400)/50.0f);
    [self addShape:s4];
    
    s5.layer.anchorPoint = CGPointMake((360.0f-400)/50.0f,(425.0f-500)/50.0f);
    [self addShape:s5];
    
    s6.layer.anchorPoint = CGPointMake((360.0f-270)/50.0f,(425.0f-500)/50.0f);
    [self addShape:s6];
    
    [self performSelector:@selector(methodToRunImmediately) withObject:nil afterDelay:0.1];
    
    
    
    
    font = [C4Font fontWithName:@"helvetica" size:90];
    text1 = [C4Shape shapeFromString:@"loading..." withFont:font];
    text1.origin = CGPointMake(230, 700);
    text1.lineWidth = 1.0f;
    text1.fillColor= [UIColor colorWithRed:250/255.0 green:250/255.0 blue:240/255.0 alpha:1.0];     
    text1.strokeColor = [UIColor colorWithRed:225/255.0 green:225/255.0 blue:224/255.0 alpha:1.0]; 
    [self.canvas addShape:text1];
    
    
    
    
    
    
    
    
    c1 = [C4Shape ellipse:CGRectMake(950, 412, 0.01, 0.01)];
    c1.fillColor=[UIColor colorWithRed:225/255.0 green:50/255.0 blue:0/255.0 alpha:0.5];     
    c1.lineWidth = 0.0f;
    c1.userInteractionEnabled = NO;
    [self addShape:c1];
    
    c2 = [C4Shape ellipse:CGRectMake(950, 412, 0.01, 0.01)];
    c2.fillColor=[UIColor colorWithRed:225/255.0 green:100/255.0 blue:0/255.0 alpha:0.5];     
    c2.lineWidth = 0.0f;
    c2.userInteractionEnabled = NO;
    [self addShape:c2];
    
    c3 = [C4Shape ellipse:CGRectMake(3560, 412, 0.01, 0.01)];
    c3.fillColor=[UIColor colorWithRed:225/255.0 green:150/255.0 blue:0/255.0 alpha:0.5];     
    c3.lineWidth = 0.0f;
    c3.userInteractionEnabled = NO;
    [self addShape:c3];
    
    
    c4 = [C4Shape ellipse:CGRectMake(3560, 412, 0.01, 0.01)];
    c4.fillColor=[UIColor colorWithRed:225/255.0 green:255/255.0 blue:100/255.0 alpha:0.5];     
    c4.lineWidth = 0.0f;
    c4.userInteractionEnabled = NO;
    [self addShape:c4];
    
    c5 = [C4Shape ellipse:CGRectMake(3560, 412, 0.01, 0.01)];
    c5.fillColor=[UIColor colorWithRed:225/255.0 green:255/255.0 blue:150/255.0 alpha:0.5];     
    c5.lineWidth = 0.0f;
    c5.userInteractionEnabled = NO;
    [self addShape:c5];
    
 
    
    
    
    
    
    
    font = [C4Font fontWithName:@"helvetica" size:0];
    text2 = [C4Shape shapeFromString:@"Somewhere," withFont:font];
    text2.origin = CGPointMake(130, 400);
    text2.lineWidth = 1.0f;
    text2.fillColor= [UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0];     
    text2.strokeColor = [UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0];  
    [self.canvas addShape:text2];
    
    font = [C4Font fontWithName:@"helvetica" size:00];
    text3 = [C4Shape shapeFromString:@"something incredible" withFont:font];
    text3.origin = CGPointMake(80, 480);
    text3.lineWidth = 1.0f;
    text3.fillColor= [UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0];      
    text3.strokeColor = [UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0]; 
    [self.canvas addShape:text3];
    
    
    font = [C4Font fontWithName:@"helvetica" size:0];
    text4 = [C4Shape shapeFromString:@"is waiting to be known." withFont:font];
    text4.origin = CGPointMake(80, 550);
    text4.lineWidth = 1.0f;
    text4.fillColor= [UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0];     
    text4.strokeColor = [UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0]; 
    [self.canvas addShape:text4];

    
    
 


    
    b1 = [C4Shape rect:CGRectMake(0, 0, 22, 1024)];
    b1.fillColor=[UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0];     
    b1.lineWidth = 0.0f;
    b1.userInteractionEnabled = NO;
    [self addShape:b1];
    
    b2 = [C4Shape rect:CGRectMake(0, 0, 16666, 22)];
    b2.fillColor=[UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0];     
    b2.lineWidth = 0.0f;
    b2.userInteractionEnabled = NO;
    [self addShape:b2];
    
    b3 = [C4Shape rect:CGRectMake(747, 0, 2882, 4884)];
    b3.fillColor=[UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0];     
    b3.lineWidth = 0.0f;
    b3.userInteractionEnabled = NO;
    [self addShape:b3];
    
    b4 = [C4Shape rect:CGRectMake(0, 994, 1524, 124)];
    b4.fillColor=[UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0];     
    b4.lineWidth = 0.0f;
    b4.userInteractionEnabled = NO;
    [self addShape:b4];
    
    
    b5 = [C4Shape rect:CGRectMake(75, 600, 650, 5)];
    b5.fillColor=[UIColor colorWithRed:38.0/255.0 green:38.0/255.0 blue:38.0/255.0 alpha:1.0];     
    b5.lineWidth = 0.0f;
    b5.userInteractionEnabled = NO;
    [self addShape:b5];
    
  
    
}

-(void)methodToRunImmediately {
    
    s1.animationDuration = 1.0f;
    s1.animationOptions = LINEAR | REPEAT;
    s1.transform = CGAffineTransformMakeRotation(PI);
    
    s2.animationDuration = 1.0f;
    s2.animationOptions = LINEAR | REPEAT;
    s2.transform = CGAffineTransformMakeRotation(PI);
    
    s3.animationDuration = 1.0f;
    s3.animationOptions = LINEAR | REPEAT;
    s3.transform = CGAffineTransformMakeRotation(PI);
    
    s4.animationDuration = 1.0f;
    s4.animationOptions = LINEAR | REPEAT;
    s4.transform = CGAffineTransformMakeRotation(PI);
    
    s5.animationDuration = 1.0f;
    s5.animationOptions = LINEAR | REPEAT;
    s5.transform = CGAffineTransformMakeRotation(PI);
    
    s6.animationDuration = 1.0f;
    s6.animationOptions = LINEAR | REPEAT;
    s6.transform = CGAffineTransformMakeRotation(PI);
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    text2.animationDuration = 0.1f;
    text2.animationOptions = EASEIN;
    text2.transform = CGAffineTransformMakeScale(7, 7);
    
    text3.animationDuration = 0.1f;
    text3.animationOptions = EASEIN;
    text3.transform = CGAffineTransformMakeScale(5.5, 5.5);
    
    text4.animationDuration = 0.1f;
    text4.animationOptions = EASEIN;
    text4.transform = CGAffineTransformMakeScale(5, 5);
    
        
    c1.animationDuration = 16.5f;
    c1.animationOptions = LINEAR;
    c1.transform = CGAffineTransformMakeScale(10354600, 1093900);  
    
    
    c2.animationDuration = 5.4f;
    c2.animationOptions = AUTOREVERSE | REPEAT;
    c2.transform = CGAffineTransformMakeScale(103000, 100780);  
    
    
    c3.animationDuration = 3.1f;
    c3.animationOptions = AUTOREVERSE | REPEAT;
    c3.transform = CGAffineTransformMakeScale(1600570, 1880000); 
    
    
    c4.animationDuration = 7.0f;
    c4.animationOptions = AUTOREVERSE | REPEAT;
    c4.transform = CGAffineTransformMakeScale(1005600, 1000000); 
    
    c5.animationDuration = 11.0f;
    c5.animationOptions = LINEAR | REPEAT;
    c5.transform = CGAffineTransformMakeScale(1005000, 100004560); 
  
    
    
    

}

@end
