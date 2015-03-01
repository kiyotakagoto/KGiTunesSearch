//
//  KGiTunesSearch.h
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KGiTunesSearchParam.h"
#import "KGiTunesSearchItem.h"

typedef void (^KGArrayResultsBlock)(NSArray *results, NSError *error);


@interface KGiTunesSearch : NSObject
@property (nonatomic, strong) NSString * phgAffiliateId;

- (void) searchInBackgroundWithParam:(KGiTunesSearchParam *)param
                       queuePriority:(NSInteger)queuePriority
                               block:(KGArrayResultsBlock)block;
- (void) searchInBackgroundWithParam:(KGiTunesSearchParam *)param
                       queuePriority:(NSInteger)queuePriority
                         cachePolicy:(NSURLRequestCachePolicy)policy
                     timeoutInterval:(NSTimeInterval)interval
                               block:(KGArrayResultsBlock)block;

@end
