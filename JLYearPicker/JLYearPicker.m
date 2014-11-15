//
//  JLYearPicker.m
//  
//
//  Created by Lewis, Jordan on 20/02/14.
//  Copyright (c) 2014 JordanLewis. All rights reserved.
//

#import "JLYearPicker.h"

@implementation JLYearPicker

-(void)setYear:(int)year {
    int index = ((int)years.count-1)-((int)[[years lastObject] intValue]-year);
    [self selectRow:index inComponent:0 animated:YES];
}

-(int)selectedYear {
    return [[self pickerView:self titleForRow:[self selectedRowInComponent:0] forComponent:0] intValue];
}

- (NSInteger)numberOfComponentsInPickerView: (UIPickerView*)thePickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    return [years count];
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [years objectAtIndex:row];
}

- (id)initWithFrame:(CGRect)frame startYear:(int)startYear endYear:(int)endYear
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        years = [[NSMutableArray alloc] initWithCapacity:endYear-startYear];
        
        for (int i = startYear; i <= endYear; i++) {
            [years addObject:[NSString stringWithFormat:@"%i",i]];
        }
        
        self.delegate = self;
        self.dataSource = self;
        self.showsSelectionIndicator = YES;
        
        [self selectRow:(years.count-1)-5/*5 years before current year*/ inComponent:0 animated:NO];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
