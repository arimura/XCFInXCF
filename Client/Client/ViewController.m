//
//  ViewController.m
//  Client
//
//  Created by k-arimura on 2022/04/05.
//

#import "ViewController.h"
#import <OuterFramework/OuterFramework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", [OTFCreator getHoge] );
    // Do any additional setup after loading the view.
}


@end
