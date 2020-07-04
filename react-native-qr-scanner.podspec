require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-qr-scanner'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/mybadge/react-native-qr-scanner', :tag => "v#{s.version}" }

  s.requires_arc   = true
  s.platform       = :ios, '9.0'

  s.subspec "RCT" do |ss|
    ss.source_files = "ios/RCT/**/*.{h,m}"
  end

  s.subspec "RN" do |ss|
    ss.source_files = "ios/RN/**/*.{h,m}"
  end


  s.default_subspecs = "RN", "RCT"

  s.preserve_paths = 'LICENSE', 'README.md', 'package.json', 'index.js'

  s.dependency 'React'
end
