Pod::Spec.new do |s|
    s.name             = 'StaffDiscoveryUI'
    s.version          = '2.1.1'
    s.summary          = 'StaffDiscoveryUI'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/121573822',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'StaffDiscoveryUI.xcframework'
  
    # dependency
    s.dependency 'Logging'
    s.dependency 'RxSwift', '~> 5'
    s.dependency 'RxCocoa', '~> 5'
    s.dependency 'SnapKit', '~> 5.0.1'
    s.dependency 'Swinject'
    s.dependency 'NSObject+Rx'
    s.dependency 'MBProgressHUD', '~> 1.2.0'
    s.dependency 'IQKeyboardManagerSwift', '6.5.0'
    s.dependency 'RxDataSources'
    s.dependency 'FittedSheets'
    s.dependency 'ESPullToRefresh'
    
    s.dependency 'TerraInstancesManager', '~> 2.1'
    s.dependency 'TekDiscoveryEvent', '~> 5.1'
    s.dependency 'TekWmsService', '~> 0.0'
    s.dependency 'TekLocalize', '~> 0.1'
    s.dependency 'Apollo', '~> 3.4'
    s.dependency 'HestiaBridgeWebView', '~> 1.1'
    s.dependency 'TerraJsBridge', '~> 0.3'
    s.dependency 'CommonBridgeCommand', '~> 0.3'
    s.dependency 'TekoTracker', '~> 1.10'
  
  end
