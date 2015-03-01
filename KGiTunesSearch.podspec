Pod::Spec.new do |s|
  s.name         = "KGiTunesSearch"
  s.version      = "0.0.1"
  s.summary      = "A model for iTunes Search API."

  s.description  = <<-DESC
                   A model for iTunes Search API.
                   DESC
  s.homepage     = "https://github.com/kiyotakagoto/KGiTunesSearch"
  s.license      = "MIT"
  s.author             = "KiyotakaGoto"
  s.social_media_url   = "http://twitter.com/KiyotakaGoto"
  s.source       = { :git => "https://github.com/kiyotakagoto/KGiTunesSearch", :tag => "#{s.version}" }
  s.source_files  = "KGiTunesSearch/Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "KGiTunesSearch/Classes/Exclude"
end
