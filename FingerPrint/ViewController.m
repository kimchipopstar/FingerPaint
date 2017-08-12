//
//  ViewController.m
//  FingerPrint
//
//  Created by Jaewon Kim on 2017-08-04.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "ViewController.h"
#import "PaintingView.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet PaintingView *paintView;

@end

@implementation ViewController

- (void)viewDidLoad {


}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.paintView];
    NSLog(@"%@",NSStringFromCGPoint(point));
    [self.paintView moveToPoint:point];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.paintView];
    NSLog(@"%@",NSStringFromCGPoint(point));
    [self.paintView drawLineToPoint:point];
}

- (IBAction)blackTapped:(UIButton *)sender {
    self.paintView.color = [UIColor blackColor];
}

- (IBAction)blueTapped:(UIButton *)sender {
     self.paintView.color = [UIColor blueColor];
}

- (IBAction)redTapped:(UIButton *)sender {
    self.paintView.color = [UIColor redColor];
}

@end
