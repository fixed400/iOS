//
//  ViewController.h
//  Hello_Name
//
//  Created by GRD on 8/22/17.
//  Copyright © 2017 GRD. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 чтоб перенести сюда свойство с Storyboard
 нужно н акомпоненте зажать ctrl и мышию перенести в интерфейс (класс)
 */

@interface ViewController : UIViewController

//Свойство лейбла - он является Outlet-том
@property (weak, nonatomic) IBOutlet UILabel *dummieLabel;

@end

