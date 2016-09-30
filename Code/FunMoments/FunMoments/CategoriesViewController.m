//
//  ViewController.m
//  EventsInformer
//
//  Created by AnthonyB on 19/09/2016.
//  Copyright © 2016 anto. All rights reserved.
//

#import "CategoriesViewController.h"

@interface CategoriesViewController ()

@end

@implementation CategoriesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"paintballSegue"]) {
        UINavigationController *navController = (UINavigationController *) segue.destinationViewController;
        UpcomingEventsViewController *categories= (UpcomingEventsViewController *) navController.topViewController;
        categories.category_id= @"1";
        
    }
    
    else if ([segue.identifier isEqualToString:@"motorRacingSegue"]) {
        UINavigationController *navController = (UINavigationController *) segue.destinationViewController;
        UpcomingEventsViewController *categories= (UpcomingEventsViewController *) navController.topViewController;
        categories.category_id= @"2";
    }
    
   else if ([segue.identifier isEqualToString:@"swimmingSegue"]) {
//        UINavigationController *navController = (UINavigationController *) segue.destinationViewController;
//        UpcomingEventsViewController *categories= (UpcomingEventsViewController *) navController.topViewController;
//        categories.category_id= @"3";

       UITabBarController *tabar=segue.destinationViewController;
       UINavigationController *navc =[tabar.viewControllers objectAtIndex:0];
       UpcomingEventsViewController *svc=[navc.viewControllers objectAtIndex:0];
    //  svc.groupArray = [(NSArray*)sender objectAtIndex:0];
//       svc.userArray = [(NSArray*)sender objectAtIndex:1];
//       svc.taskArray = [(NSMutableArray*)sender objectAtIndex:2];
//       svc.selfArray = [(NSMutableArray*)sender objectAtIndex:3];
         svc.category_id=@"3";
       [tabar setSelectedIndex:1];
     
    }
    
   else if ([segue.identifier isEqualToString:@"cyclingSegue"]) {
        UINavigationController *navController = (UINavigationController *) segue.destinationViewController;
        UpcomingEventsViewController *categories= (UpcomingEventsViewController *) navController.topViewController;
        categories.category_id= @"4";
    }
}

@end
