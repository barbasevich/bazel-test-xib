//
//  CustomViewObjc.m
//  TestXIB
//
//  Created by Anton Barbasevich on 10/06/2020.
//  Copyright © 2020 Anton Barbasevich. All rights reserved.
//

#import "CustomViewObjc.h"

@implementation CustomViewObjc

+(nullable CustomViewObjc *)fromNib {
    NSBundle *bundle = [NSBundle bundleForClass:[CustomViewObjc class]];

    NSLog(@"objc bundle: %@", [[bundle infoDictionary] valueForKey:@"CFBundleName"]);
    NSLog(@"objc path: %@", [bundle pathForResource:@"CustomViewObjc" ofType:@"nib"]);

    return [[bundle loadNibNamed:@"CustomViewObjc" owner:nil options:nil] firstObject];
}

@end
