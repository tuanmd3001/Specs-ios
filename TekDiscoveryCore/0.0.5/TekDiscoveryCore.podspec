Pod::Spec.new do |s|
    s.name             = 'TekDiscoveryCore'
    s.version          = '0.0.5'
    s.summary          = 'Discovery core for connecting api'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/39092228',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'TekDiscoveryCore.framework'
  
    s.public_header_files = 'TekDiscoveryCore.framework/Headers/*.h'
    s.source_files = 'TekDiscoveryCore.framework/Headers/*.{h,m,swift}'
  
    # dependency
    s.dependency 'Kingfisher', '~> 6.0'
    s.dependency 'UIColor_Hex_Swift', '~> 4.0.2'
    s.dependency 'Toast-Swift', '~> 5.0.0'
    s.dependency 'FittedSheets', '~> 1.4.5'
    s.dependency 'VPAttributedFormat', '~> 1.2.5'
    s.dependency 'TTTAttributedLabel'
    s.dependency 'FittedSheets'
    s.dependency 'DifferenceKit'
    s.dependency 'SkeletonView', '~> 1.8.7'
    s.dependency 'BSImagePicker', '~> 3.3.1'
    s.dependency 'IQKeyboardManagerSwift', '6.5.0'
    s.dependency 'RxCocoa', '~> 5.1.0'
    s.dependency 'RxSwift', '~> 5.1.0'
    s.dependency 'RxRelay', '~> 5.1.0'
    s.dependency 'GooglePlaces', '~> 3.4.0'
    s.dependency 'GoogleMaps', '~> 3.4.0'
    s.dependency 'JWTDecode', '~> 2.4'
    # mediaPreview
    s.dependency 'TekoMediaPreview', '~> 0.0.2'
    s.dependency 'TekoTracker', '~> 0.7.5'
  end
