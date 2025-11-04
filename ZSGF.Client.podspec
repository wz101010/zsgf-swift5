Pod::Spec.new do |s|
  s.name = 'ZSGF.Client'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = 'v1'
  s.source = 'http://github.com/wz101010/zsgf-swift5'
  s.authors = 'zhen'
  s.social_media_url = 'http://github.com/wz101010/zsgf-swift5'
  s.license = MIT
  s.homepage = 'http://github.com/wz101010/zsgf-swift5'
  s.summary = '用于与 ZSGF API 交互的 Swift 客户端 SDK'
  s.description = 'ZSGF.Client 是一个全面的 Swift SDK，旨在与 ZSGF API 无缝集成'
  s.documentation_url = 'http://github.com/wz101010/zsgf-swift5'
  s.source_files = 'ZSGF.Client/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
