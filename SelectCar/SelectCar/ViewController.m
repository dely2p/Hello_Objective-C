//
//  ViewController.m
//  SelectCar
//
//  Created by dely on 10/02/2020.
//  Copyright © 2020 dely. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView;

- (void)viewDidLoad {
    [super viewDidLoad];
    companyName = [[NSArray alloc]initWithObjects:@"테슬라",@"람보르기니",@"포르쉐", nil];
    carModel = [[NSArray alloc]init];
    carModelImage = [[NSArray alloc]init];
    
    tesla = [[NSArray alloc]initWithObjects:@"모델S",@"모델X", nil];
    teslaImageNames =[[NSArray alloc]initWithObjects:@"tesla-model-s.jpg",@"tesla-model-x.jpg", nil];
    
    lamborghini = [[NSArray alloc]initWithObjects:@"아벤타도르",@"베네노",@"우라칸", nil];;
    lamborghiniImageNames = [[NSArray alloc]initWithObjects:@"lamborghini-aventador.jpg",@"lamborghini-veneno.jpg",@"lamborghini-huracan.jpg", nil];;
    
    porsche = [[NSArray alloc]initWithObjects:@"911",@"박스터", nil];
    porscheImageNames = [[NSArray alloc]initWithObjects:@"porsche-911.jpg",@"porsche-boxter.jpg", nil];
    
    carModel = tesla;
    carModelImage = teslaImageNames;
    
    imgView.layer.cornerRadius = 50.0;
    imgView.layer.masksToBounds = true;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return companyName.count;
    }else{
        return carModel.count;
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0) {
        return [companyName objectAtIndex:row];
    }else{
        return [carModel objectAtIndex:row];
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component == 0 && row == 0) {
        carModel = tesla;
        carModelImage = teslaImageNames;
    }else if (component == 0 && row == 1){
        carModel = lamborghini;
        carModelImage = lamborghiniImageNames;
    }else if (component == 0 && row == 2){
        carModel = porsche;
        carModelImage = porscheImageNames;
    }
    
    [pickerView reloadAllComponents];
    
    imgView.image = [UIImage imageNamed:[carModelImage objectAtIndex:[pickerView selectedRowInComponent:1]]];
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 80.0;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    if (component == 0 ) {
        return 120.0;
    }else{
        return 200.0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

