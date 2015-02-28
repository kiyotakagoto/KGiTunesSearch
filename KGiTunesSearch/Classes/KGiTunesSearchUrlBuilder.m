//
//  KGiTunesSearchUrlBuilder.m
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//
#import "KGiTunesSearchUrlBuilder.h"
#import "KGiTunesSearchQueryParamBuilder.h"

static NSString* const kiTunesSearchBaseUrl = @"https://itunes.apple.com/search";

@interface KGiTunesSearchUrlBuilder ()
@property (nonatomic, strong) KGiTunesSearchParam *param;
@end

@implementation KGiTunesSearchUrlBuilder

- (id) initWithParam:(KGiTunesSearchParam *)param {
    self = [super init];
    if ( self ) {
        self.param = param;
    }
    
    return self;
}
- (NSURL *) build {
    NSString *queryParam = [[[KGiTunesSearchQueryParamBuilder alloc] initWithParam:self.param] build];
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@?%@", kiTunesSearchBaseUrl, queryParam]];
}

@end
