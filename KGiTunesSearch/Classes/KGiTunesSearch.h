//
//  KGiTunesSearch.h
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KGiTunesSearchParam.h"

typedef void (^KGArrayResultsBlock)(NSArray *results, NSError *error);


@interface KGiTunesSearch : NSObject
- (void) searchInBackgroundWithParam:(KGiTunesSearchParam *)param
                            priority:(NSInteger)priority
                               block:(KGArrayResultsBlock)block;
- (void) searchInBackgroundWithParam:(KGiTunesSearchParam *)param
                            priority:(NSInteger)priority
                         cachePolicy:(NSURLRequestCachePolicy)policy
                     timeoutInterval:(NSTimeInterval)interval
                               block:(KGArrayResultsBlock)block;

@end
