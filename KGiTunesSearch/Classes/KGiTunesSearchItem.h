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
