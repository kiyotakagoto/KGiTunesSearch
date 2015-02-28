//
//  KGiTunesSearchParam.m
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import "KGiTunesSearchParam.h"

@interface KGiTunesSearchParam()
@property (nonatomic, strong) NSMutableDictionary *params;
@end

@implementation KGiTunesSearchParam
- (id) init {
    self = [super init];
    if ( self ) {
        self.params = [[NSMutableDictionary alloc] init];
        [self setTerm:@"default"];
    }
    return self;
}

- (id) initWithTerm:(NSString *)term {
    self = [self init];
    if ( self ) {
        [self setTerm:term];
    }
    return self;
}

- (instancetype) setTerm:(NSString *)term {
    self.params[@"term"] = term;
    return self;
}
- (instancetype) setCountry:(NSString *)country {
    self.params[@"country"] = country;
    return self;
}
- (instancetype) setMedia:(NSString *)media {
    self.params[@"media"] = media;
    return self;
}
- (instancetype) setEntity:(NSString *)entity {
    self.params[@"entity"] = entity;
    return self;
}
- (instancetype) setAttribute:(NSString *)attribute {
    self.params[@"attribute"] = attribute;
    return self;
}
- (instancetype) setLimit:(NSInteger)limit {
    self.params[@"limit"] = [NSString stringWithFormat:@"%ld", (long)limit];
    return self;
}
- (instancetype) setLang:(NSString *)lang {
    self.params[@"lang"] = lang;
    return self;
}
- (instancetype) setVersion:(NSString *)version {
    self.params[@"version"] = version;
    return self;
}
- (instancetype) setExplicit:(BOOL)explicit {
    self.params[@"explicit"] = explicit ? @"Yes" : @"No";
    return self;
}

- (NSDictionary *) toDict {
    return self.params;
}
@end
