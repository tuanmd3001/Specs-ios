Pod::Spec.new do |s|
    s.name             = 'LoyaltyConsumerUI'
    s.version          = '1.1.0'
    s.summary          = 'LoyaltyConsumerUI'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/44451092',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'LoyaltyConsumerUI.xcframework'
  
    s.dependency 'LoyaltyModel', '~> 1.0'
    s.dependency 'LoyaltyCore', '~> 1.0'
    s.dependency 'ESPullToRefresh', '~> 2.9.3'
    s.dependency 'FittedSheets', '~> 1.4.6'
    s.dependency 'SkeletonView', '~> 1.21.2'
      
  end