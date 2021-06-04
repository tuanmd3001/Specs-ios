Pod::Spec.new do |s|
    s.name             = 'OrderUI'
    s.version          = '0.14.0'
    s.summary          = 'OrderUI'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/38052404',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'OrderUI.framework'
  
    s.public_header_files = 'OrderUI.framework/Headers/*.h'
    s.source_files = 'OrderUI.framework/Headers/*.{h, m, swift}'
  
    # dependency
    s.dependency 'OrderCore', '~> 0.6.0'
    s.dependency 'RxSwift', '~> 5'
    s.dependency 'RxCocoa', '~> 5'
    s.dependency 'SnapKit'
    s.dependency 'Swinject'
    s.dependency 'NSObject+Rx'
    s.dependency 'MBProgressHUD', '~> 1.2.0'
    s.dependency 'RxDataSources'
    s.dependency 'Apollo', '~> 0.4.26'
    s.dependency 'TerraInstancesManager'
    s.dependency 'TekCoreService'
    s.dependency 'TekCoreNetwork' 
    s.dependency 'Terra', '~> 2.5.3'
                     
  end