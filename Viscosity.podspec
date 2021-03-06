Pod::Spec.new do |s|
  s.name = 'Viscosity'
  s.version = '2.0.0'
  s.license = 'MIT'
  s.summary = 'Autolayout DSL for iOS'
  s.homepage = 'https://github.com/Wzxhaha/Viscosity'
  s.authors = { 'WzxJiang' => 'wzxjiang@foxmail.com' }
  s.source = { :git => 'https://github.com/Wzxhaha/Viscosity.git', :tag => '2.0.0'}
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.source_files = 'Source/*.swift'
  s.requires_arc = true
end
