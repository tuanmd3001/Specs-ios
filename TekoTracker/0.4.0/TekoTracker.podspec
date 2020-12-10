#
# Be sure to run `pod lib lint TekoTracker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TekoTracker'
  s.version          = '0.4.0'
  s.summary          = 'A short description of TekoTracker.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/teko-vn/tracker-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dũng Nguyễn' => 'dung.ntm1@teko.vn' }
  s.source           = { :git => 'https://github.com/teko-vn/tracker-ios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform = :ios, '10.0'

  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  s.swift_version = "5.1"
  s.prefix_header_file = false
  s.module_name = s.name
  
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'TekoTracker/Source/Core/**/*.{h,m,mm,swift,xcdatamodeld,xcmappingmodel}'
    ss.resources = 'TekoTracker/Source/Core/Storage/Resources/**/*.{xcdatamodeld,xcmappingmodel}'
    ss.private_header_files = 'TekoTracker/Source/Core/**/*+Internal.h'
    ss.dependency 'Alamofire'
    ss.dependency 'DeviceKit'
    ss.dependency 'ReachabilitySwift'
    ss.dependency 'RxSwift'
    ss.frameworks = 'UIKit', 'Foundation', 'CoreData'
  end
  
  s.subspec 'Ecommerce' do |ss|
    ss.source_files = 'TekoTracker/Source/Ecommerce/**/*.{h,m,mm,swift,xcdatamodeld,xcmappingmodel}'
    ss.private_header_files = 'TekoTracker/Source/Ecommerce/**/*+Internal.h'
    ss.dependency 'TekoTracker/Core'
  end
end