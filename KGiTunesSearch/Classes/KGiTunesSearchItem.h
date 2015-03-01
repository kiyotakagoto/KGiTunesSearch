//
//  KGiTunesSearchItem.h
//  KGiTunesSearch
//
//  Created by 後藤 清豪 on 2015/02/28.
//  Copyright (c) 2015年 KiyotakaGoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KGiTunesSearchItem : NSObject
@property (nonatomic, strong) NSString *kind;
@property (nonatomic, strong) NSString *wrapperType;
@property (nonatomic)         NSInteger artistId;
@property (nonatomic)         NSInteger collectionId;
@property (nonatomic)         NSInteger trackId;
@property (nonatomic, strong) NSString *collectionCensoredName;
@property (nonatomic, strong) NSString *trackCensoredName;
@property (nonatomic, strong) NSURL *artistViewUrl;
@property (nonatomic)         double collectionPrice;
@property (nonatomic)         double trackPrice;
@property (nonatomic, strong) NSString *collectionExplicitness;
@property (nonatomic, strong) NSString *trackExplicitness;
@property (nonatomic)         NSInteger discCount;
@property (nonatomic)         NSInteger discNumber;
@property (nonatomic)         NSInteger trackCount;
@property (nonatomic)         NSInteger trackNumber;
@property (nonatomic)         NSInteger trackTimeMillis;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong) NSString *primaryGenreName;
@property (nonatomic, strong) NSString *artistName;
@property (nonatomic, strong) NSString *trackName;
@property (nonatomic, strong) NSString *collectionName;
@property (nonatomic, strong) NSURL *collectionViewUrl;
@property (nonatomic, strong) NSURL *trackViewUrl;
@property (nonatomic, strong) NSURL *previewUrl;
@property (nonatomic, strong) NSURL *artworkUrl30;
@property (nonatomic, strong) NSURL *artworkUrl60;
@property (nonatomic, strong) NSURL *artworkUrl100;
@property (nonatomic, strong) NSString * phgAffiliateId;

- (id) initWithDict:(NSDictionary *)dict;
- (NSURL *) affiliatedTrackViewUrl;
- (NSURL *) affiliatedCollectionViewUrl;

@end
