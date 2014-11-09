//
//  JLYearPicker.h
//  
//
//  Created by Lewis, Jordan on 20/02/14.
//  Copyright (c) 2014 JordanLewis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JLYearPicker : UIPickerView <UIPickerViewDelegate, UIPickerViewDataSource> {
    NSMutableArray *years;
}

-(id)initWithFrame:(CGRect)frame startYear:(int)startYear endYear:(int)endYear;

-(void)setYear:(int)year;
-(int)selectedYear;

@end
