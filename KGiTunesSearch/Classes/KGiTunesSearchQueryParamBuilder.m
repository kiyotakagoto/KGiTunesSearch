//
//  KGiTunesSearchQueryParamBuilder.m
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import "KGiTunesSearchQueryParamBuilder.h"

@interface KGiTunesSearchQueryParamBuilder ()
@property (nonatomic, strong) KGiTunesSearchParam* param;
@end

@implementation KGiTunesSearchQueryParamBuilder
- (id) initWithParam:(KGiTunesSearchParam *)param {
    self = [super init];
    if ( self ) {
        self.param = param;
    }
    
    return self;
}
- (NSString *) build {
    NSMutableArray *queryParams = [@[] mutableCopy];
    NSDictionary *params = [self.param toDict];
    for ( NSString *param in [params allKeys] ) {
        [queryParams addObject:[NSString stringWithFormat:@"%@=%@", param, params[param]]];
    }
    
    return [queryParams componentsJoinedByString:@"&"];
}

@end
