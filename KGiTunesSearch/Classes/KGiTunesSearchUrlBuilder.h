//
//  KGiTunesSearchUrlBuilder.h
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import <Foundation/Foundation.h>
@class KGiTunesSearchParam;

@interface KGiTunesSearchUrlBuilder : NSObject
- (id) initWithParam:(KGiTunesSearchParam *)param;
- (NSURL *) build;
@end