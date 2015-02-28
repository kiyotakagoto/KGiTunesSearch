//
//  KGiTunesSearchParam.h
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KGiTunesSearchParam : NSObject
- (id) initWithTerm:(NSString *)term;

- (instancetype) setTerm:(NSString *)term;
- (instancetype) setCountry:(NSString *)country;
- (instancetype) setMedia:(NSString *)media;
- (instancetype) setEntity:(NSString *)entity;
- (instancetype) setAttribute:(NSString *)attribute;
- (instancetype) setLimit:(NSInteger)limit;
- (instancetype) setLang:(NSString *)lang;
- (instancetype) setVersion:(NSString *)version;
- (instancetype) setExplicit:(BOOL)explicit;

- (NSDictionary *) toDict;
@end
