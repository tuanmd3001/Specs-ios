#
# Be sure to run `pod lib lint Tekit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'MinervaUI'
    s.version          = '3.14.0-alpha'
    s.summary          = 'MinervaUI for built-in UI payment screen'
  
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
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/46507990',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }

    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'MinervaUI.xcframework'
  
    # dependency
    s.dependency 'TekoTracker', '~> 1.0'
    s.dependency 'Minerva', '~> 3.13'
    s.dependency 'Apollo', '~> 1.0'
    s.dependency 'LoyaltyComponent', '~> 0.5'
    s.dependency 'ApolloTheme', '~> 1.0'

    s.dependency 'VnpayWalletSDK', '~> 1.0.3'
    s.dependency 'Kingfisher', '~> 6.0'
    s.dependency 'SVProgressHUD', '~> 2.2.5'
    s.dependency 'SnapKit', '~> 5.0.1'
    s.dependency 'Toast-Swift', '~> 5.0.0'
    s.dependency 'FittedSheets', '~> 1.4.6'
    s.dependency 'SkeletonView', '~> 1.21.2'

  end