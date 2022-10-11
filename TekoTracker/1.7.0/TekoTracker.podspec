#
# Be sure to run `pod lib lint TekoTracker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TekoTracker'
  s.version          = '1.7.0'
  s.summary          = 'A short description of TekoTracker.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/80634080',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }

  s.ios.deployment_target = '10.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.vendored_frameworks = 'TekoTracker.xcframework'

  # s.vendored_frameworks = 'TekoTracker.framework'
  # s.public_header_files = 'TekoTracker.framework/Headers/*.h'
  # s.source_files = 'TekoTracker.framework/Headers/*.{h, m, swift}'

  s.dependency 'Alamofire', '~> 5.3.0'
  s.dependency 'DeviceKit'
  s.dependency 'ReachabilitySwift'
  s.dependency 'RxSwift', '~> 5.0'
  s.dependency 'SwiftFootprint', '~> 1.5'
  s.dependency 'TerraInstancesManager', '~> 2.1'

  # s.ios.deployment_target = '10.0'
  # s.requires_arc = true
  # s.swift_version = "5.1"
  # s.prefix_header_file = false
  # s.module_name = s.name
  
  # s.default_subspec = 'Core'
  
  # s.subspec 'Core' do |ss|
  #   ss.source_files = 'TekoTracker/Source/Core/**/*.{h,m,mm,swift,xcdatamodeld,xcmappingmodel}'
  #   ss.resources = 'TekoTracker/Source/Core/Storage/Resources/**/*.{xcdatamodeld,xcmappingmodel}'
  #   ss.private_header_files = 'TekoTracker/Source/Core/**/*+Internal.h'
  #   ss.dependency 'Alamofire', '5.3.0'
  #   ss.dependency 'DeviceKit'
  #   ss.dependency 'ReachabilitySwift'
  #   ss.dependency 'RxSwift'
  #   # ss.dependency 'Footprint'
  #   ss.frameworks = 'UIKit', 'Foundation', 'CoreData'
  # end
  
  # s.subspec 'Ecommerce' do |ss|
  #   ss.source_files = 'TekoTracker/Source/Ecommerce/**/*.{h,m,mm,swift,xcdatamodeld,xcmappingmodel}'
  #   ss.private_header_files = 'TekoTracker/Source/Ecommerce/**/*+Internal.h'
  #   ss.dependency 'TekoTracker/Core'
  # end

  # s.subspec 'Terra' do |ss|
  #   ss.source_files = 'TekoTracker/Source/TerraTracker/**/*.{h,m,mm,swift,xcdatamodeld,xcmappingmodel}'
  #   ss.private_header_files = 'TekoTracker/Source/TerraTracker/**/*+Internal.h'
  #   ss.dependency 'TekoTracker/Core'
  #   ss.dependency 'TerraInstancesManager'
  # end

end
