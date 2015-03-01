//
//  KGiTunesSearchItem.m
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import "KGiTunesSearchItem.h"

@implementation KGiTunesSearchItem
- (id) initWithDict:(NSDictionary *)dict {
    self = [super init];
    if ( self ) {
        self.kind                   = dict[@"kind"];
        self.artistName             = dict[@"artistName"];
        self.trackName              = dict[@"trackName"];
        self.collectionName         = dict[@"collectionName"];
        self.collectionViewUrl      = [NSURL URLWithString:dict[@"collectionViewUrl"]];
        self.trackViewUrl           = [NSURL URLWithString:dict[@"trackViewUrl"]];
        self.previewUrl             = [NSURL URLWithString:dict[@"previewUrl"]];
        self.artworkUrl30           = [NSURL URLWithString:dict[@"artworkUrl30"]];
        self.artworkUrl60           = [NSURL URLWithString:dict[@"artworkUrl60"]];
        self.artworkUrl100          = [NSURL URLWithString:dict[@"artworkUrl100"]];
        self.wrapperType            = dict[@"wrapperType"];
        self.artistId               = [dict[@"artistId"] integerValue];
        self.collectionId           = [dict[@"collectionId"] integerValue];
        self.trackId                = [dict[@"trackId"] integerValue];
        self.collectionCensoredName = dict[@"collectionCensoredName"];
        self.trackCensoredName      = dict[@"trackCensoredName"];
        self.artistViewUrl          = [NSURL URLWithString:dict[@"artistViewUrl"]];
        self.collectionPrice        = [dict[@"collectionPrice"] doubleValue];
        self.trackPrice             = [dict[@"trackPrice"] doubleValue];
        self.collectionExplicitness = dict[@"collectionExplicitness"];
        self.trackExplicitness      = dict[@"trackExplicitness"];
        self.discCount              = [dict[@"discCount"] integerValue];
        self.discNumber             = [dict[@"discNumber"] integerValue];
        self.trackCount             = [dict[@"trackCount"] integerValue];
        self.trackNumber            = [dict[@"trackNumber"] integerValue];
        self.trackTimeMillis        = [dict[@"trackTimeMillis"] integerValue];
        self.country                = dict[@"country"];
        self.currency               = dict[@"currency"];
        self.primaryGenreName       = dict[@"primaryGenreName"];

    }
    
    return self;
}

- (NSURL *) affiliatedTrackViewUrl {
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@&at=%@", self.trackViewUrl.absoluteString, self.phgAffiliateId]];
}
- (NSURL *) affiliatedCollectionViewUrl {
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@&at=%@", self.collectionViewUrl.absoluteString, self.phgAffiliateId]];
}
@end
