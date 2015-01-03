//
//  ViewController.m
//  DatePickerController
//  Created by A's macAir on 1/2/15.
//  Copyright (c) 2015 Abdoulaye Diallo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    NSArray *continents;
    NSArray *countries;
}

@end

@implementation ViewController

@synthesize thePicker;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    continents=[[NSArray alloc] initWithObjects: @"Africa",@"America",@"Europe",@"Australia",@"Asia", @"Antartica",nil];
    countries=[[NSArray alloc] initWithObjects:@"Guinea",@"United States", @"France",@"China",@"Penguins City", nil];
    //Let's set the picker:
    [thePicker selectRow:0 inComponent:1 animated:YES];
    [thePicker selectRow:1 inComponent:1 animated:YES];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma  mark- PickerView Delegates

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    switch (component) {
        case 0:
            return [continents count];
            break;
        case 1:
            return [countries count];
            break;
        default:
            break;
    }
    return 0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    switch (component) {
        case 0:
            return [continents objectAtIndex:row];
            break;
        case 1:
            return [countries objectAtIndex:row];
            break;
        default:
            break;
    }
    return nil;
    
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    self.Label.text=[NSString stringWithFormat:@"%@-%@",[continents objectAtIndex:[thePicker selectedRowInComponent:0]],[countries objectAtIndex:[thePicker selectedRowInComponent:1]]];
}
@end
