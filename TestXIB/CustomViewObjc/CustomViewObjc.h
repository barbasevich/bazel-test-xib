//
//  CustomViewObjc.h
//  TestXIB
//
//  Created by Anton Barbasevich on 10/06/2020.
//  Copyright © 2020 Anton Barbasevich. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomViewObjc : UIView

@property (weak, nonatomic) IBOutlet UILabel *label;

+(nullable CustomViewObjc *)fromNib;

@end

NS_ASSUME_NONNULL_END
