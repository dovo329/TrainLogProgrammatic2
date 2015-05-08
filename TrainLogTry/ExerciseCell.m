//
//  ExerciseCell.m
//  TrainLog
//
//  Created by Douglas Voss on 5/5/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "ExerciseCell.h"

@implementation ExerciseCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.exerciseName  = [[UILabel alloc] initWithFrame:CGRectMake(0,40,320,10)];
        self.exerciseName.backgroundColor = [UIColor orangeColor];
        self.warmup1Amount = [[UILabel alloc] init];
        self.warmup2Amount = [[UILabel alloc] init];
        self.warmup3Amount = [[UILabel alloc] init];
        self.warmup4Amount = [[UILabel alloc] init];

        self.weightAmount = [[UITextField alloc] init];
        self.set1Reps     = [[UITextField alloc] init];
        self.set2Reps     = [[UITextField alloc] init];
        self.set3Reps     = [[UITextField alloc] init];
        self.set4Reps     = [[UITextField alloc] init];
        self.set5Reps     = [[UITextField alloc] init];
    }
    
    [self.contentView addSubview:self.exerciseName];
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];    
    //self.exerciseName.frame = CGRectMake(0,10,320,10);
    //self.exerciseName.backgroundColor = [UIColor greenColor];
    //[self.contentView addSubview:self.exerciseName];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    UIColor *backgroundColor = self.set1Reps.backgroundColor;
    [super setHighlighted:highlighted animated:animated];
    self.imageView.backgroundColor = backgroundColor;
    [self resetBackgroundColors:backgroundColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    UIColor *backgroundColor = self.set1Reps.backgroundColor;
    [super setSelected:selected animated:animated];
    self.imageView.backgroundColor = backgroundColor;
    [self resetBackgroundColors:backgroundColor];
}

- (void)resetBackgroundColors:(UIColor *)backgroundColor
{
    self.weightAmount.backgroundColor = backgroundColor;
    self.set1Reps.backgroundColor = backgroundColor;
    self.set2Reps.backgroundColor = backgroundColor;
    self.set3Reps.backgroundColor = backgroundColor;
    self.set4Reps.backgroundColor = backgroundColor;
    self.set5Reps.backgroundColor = backgroundColor;
    UIColor *warmupColor = [UIColor colorWithHue:0.2 saturation:0.7 brightness:0.9 alpha:1.0];
    self.warmup1Amount.backgroundColor = warmupColor;
    self.warmup2Amount.backgroundColor = warmupColor;
    self.warmup3Amount.backgroundColor = warmupColor;
    self.warmup4Amount.backgroundColor = warmupColor;
}

@end
