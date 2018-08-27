//
//  ViewController.m
//  MyYyTextDemo
//
//  Created by yan on 2018/7/4.
//  Copyright © 2018 yan. All rights reserved.
//

#import <YYText.h>
#import "ViewController.h"
#import "MyTextCell.h"

@interface ViewController ()

@property (nonatomic, copy) NSArray *data;

@end

@implementation ViewController

static NSString *cellId = @"MyTextCellIdentifier";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _data = [NSArray arrayWithObjects:@"hello", @"hello", @"hello", @"hello", @"hello", nil];
    [self.tableView registerClass:[MyTextCell class] forCellReuseIdentifier:cellId];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTextCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil) {
        cell = [[MyTextCell alloc] init];
    }
    
    cell.myLabel.text = self.data[indexPath.row];
    
    return cell;
}

@end
