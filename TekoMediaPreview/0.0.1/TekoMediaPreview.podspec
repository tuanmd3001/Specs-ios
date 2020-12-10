Pod::Spec.new do |s|
  s.name             = 'TekoMediaPreview'
  s.version          = '0.0.1'
  s.summary          = 'TekoMediaPreview'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/teko-vn/firebase-plugin-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'linhvt-teko' => 'linh.vt@teko.vn' }
  s.source           = { :git => 'https://github.com/teko-vn/ios-media-preview.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '4.2'
  s.ios.deployment_target = '10.0'

  s.source_files = 'TekoMediaPreview/Source/**/*.{swift}'
  # s.resources = "FirebasePlugin/Module/**/*.{xcassets,json,storyboard,xib,xcdatamodeld}"

  # s.resource_bundles = {
  #   'FirebasePlugin' => ['FirebasePlugin/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.frameworks = 'UIKit', 'AVFoundation', 'Photos'
  s.dependency 'Kingfisher'

end