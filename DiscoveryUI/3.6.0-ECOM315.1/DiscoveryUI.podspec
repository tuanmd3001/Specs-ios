Pod::Spec.new do |s|
    s.name             = 'DiscoveryUI'
    s.version          = '3.6.0-ECOM315.1'
    s.summary          = 'DiscoveryUI'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/149341517',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'DiscoveryUI.xcframework'
  
    s.dependency 'Logging'
    #ui
    s.dependency 'UIColor_Hex_Swift', '~> 4.0.2'
    s.dependency 'Toast-Swift', '~> 5.0.0'
    s.dependency 'FittedSheets', '~> 1.4.5'
    s.dependency 'VPAttributedFormat', '~> 1.2.5'
    s.dependency 'TTTAttributedLabel'
    s.dependency 'DifferenceKit'
    s.dependency 'SkeletonView', '~> 1.21.2'
    s.dependency 'BSImagePicker', '~> 3.3.1'
    s.dependency 'IQKeyboardManagerSwift', '6.5.0'
    s.dependency 'DeviceKit'
    s.dependency 'ESPullToRefresh'
    s.dependency 'SnapKit', '~> 5.0.1'
    s.dependency 'ShopFrontWebCoreSDK', '~> 0.2'
    #realm
    s.dependency 'RxRealm'
    s.dependency 'RealmSwift', '~> 10.20.0'
    #rx
    s.dependency 'RxCocoa', '~> 5.1.0'
    s.dependency 'RxSwift', '~> 5.1.0'
    s.dependency 'RxRelay', '~> 5.1.0'
    #decode
    s.dependency 'JWTDecode', '~> 2.4'
      
    s.dependency 'TerraInstancesManager', '~> 2.1'
    s.dependency 'Apollo', '~> 3.4'
    s.dependency 'ApolloTheme'
    s.dependency 'TekDiscoveryEvent', '~> 6.1'
    s.dependency 'TekLocalize', '~> 0.1'
    s.dependency 'TekoTracker', '~> 1.10'
  end
