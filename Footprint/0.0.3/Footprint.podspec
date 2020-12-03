#
# Be sure to run `pod lib lint Tekit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'Footprint'
    s.version          = ENV['VERSION']
    s.summary          = 'Footprint models'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://huylv-teko:29b7084d0ccbf3665332e93bda6edf772fc9d5ec@github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = { :git => 'https://gitlab-ci-token:xvRZVdtxj4EHK-WGawzo@git.teko.vn/data/footprint/footprint-dto.git' }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '10.0'
  
    # s.source_files = 'Tekit/Classes/**/*'
    
    # s.resource_bundles = {
    #   'Tekit' => ['Tekit/Assets/*.png']
    # }
  
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
  
    # s.vendored_frameworks = 'Footprint'
  
    s.public_header_files = 'swift/**/*.h'
    s.source_files = 'swift/**/*.swift'
  
    # dependency
#     s.dependency 'gRPC-Swift', '~> 1.0.0-alpha.20'
    # s.dependency 'TekCoreService', '0.3.24'
    # s.dependency 'Kingfisher'
  
  end