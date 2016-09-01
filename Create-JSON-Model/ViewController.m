//
//  ViewController.m
//  Create-JSON-Model
//
//  Created by YouXianMing on 16/8/31.
//  Copyright © 2016年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "CreateModel.h"
#import "FileManager.h"
#import "NSData+JSONData.h"
#import "NSDictionary+JSONData.h"
#import "NSArray+JSONData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {

    [super viewDidAppear:animated];
    
    NSData *data = [NSData dataWithContentsOfFile:[FileManager bundleFileWithName:@"data.json"]];
    id list      = [data toListProperty];
    
    if ([list isKindOfClass:[NSDictionary class]]) {
        
        [CreateModel createModelWithJsonData:list rootModelName:@"RootModel"];
    }
}

@end
