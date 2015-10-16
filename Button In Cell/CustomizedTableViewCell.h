//
//  CustomizedTableViewCell.h
//  Button In Cell
//
//  Created by Dante on 15/10/16.
//  Copyright © 2015年 Futurelab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomizedTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *openButton;

@end
