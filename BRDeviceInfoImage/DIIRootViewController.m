//
//  DIIRootViewController.m
//  DeviceInfoImage
//
//  Created by Jesús on 18/4/15.
//  Copyright (c) 2015 Jesús. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

#import "DIIRootViewController.h"
#import "DIIDeviceInfoView.h"

#import "UIView+UIImageExtensions.h"

@interface DIIRootViewController ()

@property (nonatomic, assign) IBOutlet UIView *vDeviceInfoContainer;

@property (nonatomic, assign) UIView *vDeviceInfo;
@property (nonatomic, assign) MBProgressHUD *savingHUD;


@end

@implementation DIIRootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    DIIDeviceInfoView *vDeviceInfo = [[[NSBundle mainBundle] loadNibNamed:@"DIIDeviceInfoView" owner:nil options:nil] objectAtIndex:0];
    vDeviceInfo.frame = _vDeviceInfoContainer.bounds;
    [_vDeviceInfoContainer addSubview:vDeviceInfo];
    self.vDeviceInfo = vDeviceInfo;
}

#pragma mark IBActions

- (IBAction)generateImage:(id)sender
{
    MBProgressHUD *savingHUD = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    savingHUD.labelText = @"Saving...";
    self.savingHUD = savingHUD;
    
    
    UIImageWriteToSavedPhotosAlbum([_vDeviceInfo renderImage],
                                   self,
                                   @selector(image:didFinishSavingWithError:contextInfo:), NULL);
}


#pragma mark Private

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo;
{
    [_savingHUD hide:YES];
    if (error) {
        [self.savingHUD hide:YES];
        
        UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                             message:@"Error saving image"
                                                            delegate:nil
                                                   cancelButtonTitle:@"Close"
                                                   otherButtonTitles:nil];
        [errorAlert show];
    }
}

@end
