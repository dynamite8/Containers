//
//  ContainerViewController.h
//  Containers
//
//  Created by Jenny Chang Ho on 3/18/16.
//  Copyright © 2016 GrubHub. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerViewController : UIViewController

- (void)swapViewControllers;
- (void)showParticularScreen:(NSString *)segueIdentifier;

@end
