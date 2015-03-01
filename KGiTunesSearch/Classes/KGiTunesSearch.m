//
//  KGiTunesSearch.m
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import "KGiTunesSearch.h"
#import "KGiTunesSearchRequestBuilder.h"

@implementation KGiTunesSearch
- (void) searchInBackgroundWithParam:(KGiTunesSearchParam *)param
                       queuePriority:(NSInteger)queuePriority
                               block:(KGArrayResultsBlock)block
{
    [self searchInBackgroundWithParam:param
                        queuePriority:queuePriority
                          cachePolicy:NSURLRequestReloadIgnoringCacheData
                      timeoutInterval:30.0f
                                block:block];
}
- (void) searchInBackgroundWithParam:(KGiTunesSearchParam *)param
                       queuePriority:(NSInteger)queuePriority
                         cachePolicy:(NSURLRequestCachePolicy)policy
                     timeoutInterval:(NSTimeInterval)interval
                               block:(KGArrayResultsBlock)block
{
    dispatch_async(dispatch_get_global_queue(queuePriority, 0), ^{
        NSHTTPURLResponse *response;
        NSError *error;
        KGiTunesSearchRequestBuilder *requestBuilder = [[KGiTunesSearchRequestBuilder alloc] initWithParam:param];
        requestBuilder.cachePolicy     = policy;
        requestBuilder.timeoutInterval = interval;
        NSData *data = [NSURLConnection sendSynchronousRequest:[requestBuilder build]
                                             returningResponse:&response
                                                         error:&error];
        if ( error ) {
            dispatch_sync(dispatch_get_main_queue(), ^{
                block( nil, error );
            });
            return;
        }
        
        NSError *jsonError;
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data
                                                             options:NSJSONReadingMutableContainers
                                                               error:&jsonError];
        
        if ( jsonError ) {
            dispatch_sync(dispatch_get_main_queue(), ^{
                block( nil, jsonError );
            });
            return;
        }
        
        NSArray *results = json[@"results"];
        NSMutableArray *entities = [@[] mutableCopy];
        for ( NSDictionary *dict in results ) {
            KGiTunesSearchItem *item = [[KGiTunesSearchItem alloc] initWithDict:dict];
            if ( self.phgAffiliateId ) {
                item.phgAffiliateId = self.phgAffiliateId;
            }
            [entities addObject:item];
        }
        
        dispatch_sync(dispatch_get_main_queue(), ^{
            block( entities, nil );
        });
    });
}

@end
