//
//  ViewController.h
//  DatePickerController
//
//  Created by A's macAir on 1/2/15.
//  Copyright (c) 2015 Abdoulaye Diallo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *thePicker;
@property (weak, nonatomic) IBOutlet UILabel *Label;


@end

