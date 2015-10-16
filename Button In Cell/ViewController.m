//
//  ViewController.m
//  Button In Cell
//
//  Created by Dante on 15/10/16.
//  Copyright © 2015年 Futurelab. All rights reserved.
//

#import "ViewController.h"
#import "CustomizedTableViewCell.h"
#import "GreetingController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *datasource = nil;

-(void) viewDidLoad{
        datasource = @[@"Dante", @"Ken", @"Elvewyn"];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return datasource.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"CustomizedCell";
    CustomizedTableViewCell *cell = (CustomizedTableViewCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[CustomizedTableViewCell alloc] init];
    }
    
    cell.titleLabel.text = (NSString *)[datasource objectAtIndex:indexPath.row];
    cell.openButton.tag = indexPath.row;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier  isEqual: @"Greeting"]) {
        GreetingController *vc = segue.destinationViewController;
        UIButton *button = (UIButton *)sender;
        vc.visitorName = [datasource objectAtIndex:button.tag];
    }
}

@end
