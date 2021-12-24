Pod::Spec.new do |s|
    s.name             = 'OrderUI'
    s.version          = '0.26.0'
    s.summary          = 'OrderUI'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/52491553',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'OrderUI.xcframework'
  
    # dependency
    s.dependency 'RxSwift', '~> 5'
    s.dependency 'RxCocoa', '~> 5'
    s.dependency 'SnapKit'
    s.dependency 'Swinject'
    s.dependency 'NSObject+Rx'
    s.dependency 'MBProgressHUD', '~> 1.2.0'
    s.dependency 'RxDataSources'
    s.dependency 'FittedSheets'
    s.dependency 'ESPullToRefresh'
        
    s.dependency 'OrderCore', '~> 0.14'
    s.dependency 'Apollo', '~> 2.0'
    s.dependency 'TerraInstancesManager', '~> 2.1'
    s.dependency 'TekCoreService', '~> 2.1'
    s.dependency 'TerraJsBridge', '~> 0.3'
    s.dependency 'CommonBridgeCommand', '~> 0.3'
    s.dependency 'HestiaWebApp', '~> 0.4'
    s.dependency 'ShopFrontWebCoreSDK', '~> 0.1'
    s.dependency 'TekoTracker', '~> 1.2'
  end
