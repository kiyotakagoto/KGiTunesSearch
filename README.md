# Installation
KGiTunesSearch can be added to a project using CocoaPods.

```
pod 'KGiTunesSearch', :git => 'https://github.com/kiyotakagoto/KGiTunesSearch'
```

# Usage

```
KGiTunesSearchParam *param = [[KGiTunesSearchParam alloc] initWithTerm:@"Maroon5"];
[param setMedia:@"music"];
KGiTunesSearch *search = [[KGiTunesSearch alloc ] init];
search.phgAffiliateId = @"PHG_AFFILICATE_ID";
[search searchInBackgroundWithParam:param
                          queuePriority:DISPATCH_QUEUE_PRIORITY_HIGH block:
     ^(NSArray *results, NSError *error) {
         for ( KGiTunesSearchItem *item in results ) {
             NSLog(@"artist:%@, track:%@, trackView:%@, collectionView:%@, affiliatedTrackView:%@",
                   item.artistName,
                   item.trackName,
                   item.trackViewUrl.absoluteString,
                   item.collectionViewUrl.absoluteString,
                   item.affiliatedTrackViewUrl.absoluteString
                   );
         }
     }];

```

# License
KGiTunesSearch is maintained under the MIT license.
