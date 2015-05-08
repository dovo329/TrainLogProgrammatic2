//
//  MainExerciseScreenViewController.h
//  TrainLog
//
//  Created by Douglas Voss on 5/5/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainExerciseScreenViewController : UITableViewController <UITableViewDelegate, UITextFieldDelegate, UIGestureRecognizerDelegate, UITableViewDataSource>

@property (nonatomic) NSMutableArray *exerciseNameArray;
@property (nonatomic) NSString *unitsString;

//@property (nonatomic, strong) MainExerciseScreenDataSource *dataSource;

@end
