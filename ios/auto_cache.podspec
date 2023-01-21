#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint auto_cache.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'auto_cache'
  s.version          = '1.0.0'
  s.summary          = 'Simplified Flutter Caching.'
  s.description      = <<-DESC
  auto_cache is simple, yet powerful package that does nothing but caching, but it does it well.
  
  It offers a good API with integrations for single-threaded and isolates with workmanager.

  Read the story here [Open Source Stories: Writing a simplified Caching Library]()  
                       DESC
  s.homepage         = 'https://woza.art'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Woza.art' => 'cameron.debruyn@woza.art' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.platform         = :ios, '11.0'
  
  s.dependency 'Flutter'
  s.dependency 'workmanager'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

end
