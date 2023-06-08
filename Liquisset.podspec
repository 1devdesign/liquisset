Pod::Spec.new do |s|
  s.name             = "Liquisset"
  s.version          = "0.0.1"
  s.summary          = "Open-source library of SwiftUI components."

  s.homepage         = 'https://liquisset.com'
  s.license          = 'MIT'
  s.author           = { 'Liquisset' => 'diego@1devdesign.com' }
  s.source           = { :git => 'https://github.com/1devdesign/liquisset.git', :tag => s.version.to_s }
  s.social_media_url = 'http://liquisset.com'

  s.ios.deployment_target = '13.0'
  
  s.swift_version    = '5.0'

  s.source_files = [
     'Sources/*.swift',
     'Sources/**/*.swift'
  ]
end
