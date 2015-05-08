//
//  MainExerciseScreenViewController.m
//  TrainLog
//
//  Created by Douglas Voss on 5/5/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "MainExerciseScreenViewController.h"
#import "MainExerciseScreenDataSource.h"

@implementation MainExerciseScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIColor *backgroundPatternColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"chromeMesh.png"]];
    //self.tableView.backgroundColor = backgroundPatternColor;
    
    //UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    //[self.view addGestureRecognizer:tap];
    NSLog(@"self.tableView=%@", self.tableView);
    self.tableView.delegate = self;
    MainExerciseScreenDataSource *dataSource = [[MainExerciseScreenDataSource alloc] init];
    self.tableView.dataSource = dataSource;
    
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



@end
