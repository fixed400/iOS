//
//  ViewController.m
//  Hello_Name
//
//  Created by GRD on 8/22/17.
//  Copyright © 2017 GRD. All rights reserved.
//
// https://www.youtube.com/watch?v=Ic-su8HW91I

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

BOOL textChanged;

// в этом метаде происходит загрузка View
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //обращение к методу (2 способа)
    //self.dummieLabel.text =@"Hello,is it Krusty?";
    //OR
    _dummieLabel.text =@"Hello,is it Frank?";
    textChanged = NO;
    
    
}
//собственный метод для обработки нажатия на кнопку
//"-"  -   метод принадлежит объекту его можно вызывать у каждого объекта
- (IBAction)changeLable:(id)sender {
    
    if(!textChanged){
        
        //обращение к полю (как передача сообщения)
        [self.dummieLabel setText:@"No,is it Stive!"];
        textChanged = YES;
    }else{
        //вызов метода(как передача сообщения)
        [self.dummieLabel setText:@"Hello ,is it Frank?"];
        textChanged = NO;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
