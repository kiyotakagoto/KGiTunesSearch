//
//  KGiTunesSearchRequestBuilder.m
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import "KGiTunesSearchRequestBuilder.h"
#import "KGiTunesSearchUrlBuilder.h"

@interface KGiTunesSearchRequestBuilder()
@property (nonatomic, strong) KGiTunesSearchParam* param;
@end

@implementation KGiTunesSearchRequestBuilder
- (id) initWithParam:(KGiTunesSearchParam *)param {
    self = [super init];
    if ( self ) {
        self.param = param;
    }

    return self;
}
- (NSURLRequest *) build {
    return [NSURLRequest requestWithURL:[[[KGiTunesSearchUrlBuilder alloc ]initWithParam:self.param] build]
                            cachePolicy:self.cachePolicy ? self.cachePolicy : NSURLRequestReloadIgnoringCacheData
                        timeoutInterval:self.timeoutInterval ? self.timeoutInterval : 30.0f];
}

@end
