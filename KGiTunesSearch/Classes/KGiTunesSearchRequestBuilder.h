//
//  KGiTunesSearchRequestBuilder.h
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import <Foundation/Foundation.h>
@class KGiTunesSearchParam;

@interface KGiTunesSearchRequestBuilder : NSObject
@property (nonatomic) NSURLRequestCachePolicy cachePolicy;
@property (nonatomic) NSTimeInterval timeoutInterval;

- (id) initWithParam:(KGiTunesSearchParam *)param;
- (NSURLRequest *) build;
@end
