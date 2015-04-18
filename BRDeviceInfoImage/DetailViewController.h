//
//  DetailViewController.h
//  BRDeviceInfoImage
//
//  Created by Jesús on 18/4/15.
//  Copyright (c) 2015 Jesús. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

