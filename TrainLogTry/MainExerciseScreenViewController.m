//
//  MainExerciseScreenViewController.m
//  TrainLog
//
//  Created by Douglas Voss on 5/5/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "MainExerciseScreenViewController.h"
#import "ExerciseCell.h"

@implementation MainExerciseScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIColor *backgroundPatternColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"chromeMesh.png"]];
    //self.tableView.backgroundColor = backgroundPatternColor;
    
    //UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    //[self.view addGestureRecognizer:tap];
    NSLog(@"self.tableView=%@", self.tableView);
    self.tableView.delegate = self;
    
    self.exerciseNameArray = [NSMutableArray new];
    
    [self.exerciseNameArray addObject:@"Squat"];
    [self.exerciseNameArray addObject:@"Deadlift"];
    [self.exerciseNameArray addObject:@"OH Press"];
    
    self.unitsString = @"lbs";
    
    //MainExerciseScreenDataSource *dataSource = [[MainExerciseScreenDataSource alloc] init];
    //self.dataSource = [[MainExerciseScreenDataSource alloc] init];
    //self.tableView.dataSource = self.dataSource;
    self.tableView.dataSource = self;
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)handleTap:(UITapGestureRecognizer *)recognizer
{
    [self.view endEditing:YES];
    NSLog(@"handleTap started");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"exerciseCell"];
    //ExerciseCell3Sets *cell = (ExerciseCell3Sets *)[tableView dequeueReusableCellWithIdentifier:@"exerciseCell3Sets"];
    //ExerciseCell5Sets *cell = (ExerciseCell5Sets *)[tableView dequeueReusableCellWithIdentifier:@"exerciseCell5Sets"];
    //ExerciseCell *cell = (ExerciseCell *)[tableView dequeueReusableCellWithIdentifier:@"exerciseCell"];
    //ExerciseCell *cell = (ExerciseCell *)[tableView dequeueReusableCellWithIdentifier:@"exerciseCell5Sets"];
    //NSString *cellID = nil;
    //int randNum = (arc4random() % 3);
    //if (randNum < 1) {
    //    cellID = @"exerciseCell1Set";
    //} else if (randNum < 2) {
    //    cellID = @"exerciseCell3Sets";
    //} else {
    //    cellID = @"exerciseCell5Sets";
    //}
    NSString *cellID = @"exerciseCell";
    
    ExerciseCell *cell = (ExerciseCell *)[tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell==nil)
    {
        NSLog(@"nil case");
        //cell = [ExerciseCell3Sets new];
        //cell = [ExerciseCell5Set<s new];
        cell = [[ExerciseCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:(NSString *)cellID];
        //cell = [ExerciseCell new];
    } else {
        NSLog(@"not nil case");
    }
    cell.exerciseName.text = [self.exerciseNameArray objectAtIndex:indexPath.row];
    cell.weightAmount.text = @"";
    cell.set1Reps.text = @"";
    cell.set2Reps.text = @"";
    cell.set3Reps.text = @"";
    cell.set4Reps.text = @"";
    cell.set5Reps.text = @"";
    
    //cell.exerciseName.frame = CGRectMake(0,30,320,10);
    //cell.exerciseName.backgroundColor = [UIColor redColor];
    //[cell.contentView addSubview:cell.exerciseName];
    
    //UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 10.0)];
    //testLabel.backgroundColor = [UIColor redColor];
    //[cell.contentView addSubview:testLabel];
    //cell.backgroundView = [[UIImageView alloc] initWithImage:[ [UIImage imageNamed:@"CellNormal.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0]];
    //cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[ [UIImage imageNamed:@"CellHighlight.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0]];
    
    return (UITableViewCell *)cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.exerciseNameArray count];
}


@end
