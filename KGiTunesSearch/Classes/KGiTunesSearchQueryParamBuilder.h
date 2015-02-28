//
//  KGiTunesSearchQueryParamBuilder.h
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KGiTunesSearchParam.h"

@interface KGiTunesSearchQueryParamBuilder : NSObject
- (id) initWithParam:(KGiTunesSearchParam *)param;
- (NSString *) build;
@end
