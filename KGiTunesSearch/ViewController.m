//
//  ViewController.m
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import "ViewController.h"
#import "KGiTunesSearch.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    KGiTunesSearchParam *param = [[KGiTunesSearchParam alloc] initWithTerm:@"Maroon5"];
    [param setMedia:@"music"];
    KGiTunesSearch *search = [[KGiTunesSearch alloc ] init];
    [search searchInBackgroundWithParam:param
                          queuePriority:DISPATCH_QUEUE_PRIORITY_HIGH block:
     ^(NSArray *results, NSError *error) {
         if ( error ) {
             NSLog(@"### %@", error);
             return;
         }
         
         for ( KGiTunesSearchItem *item in results ) {
             NSLog(@"--> %@", item.trackName );
         }
     }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
