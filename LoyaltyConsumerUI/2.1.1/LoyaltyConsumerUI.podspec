Pod::Spec.new do |s|
    s.name             = 'LoyaltyConsumerUI'
    s.version          = '2.1.1'
    s.summary          = 'LoyaltyConsumerUI'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/61710923',
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
  
    s.dependency 'LoyaltyModel', '~> 1.1'
    s.dependency 'LoyaltyCore', '~> 1.1'
    s.dependency 'ESPullToRefresh', '~> 2.9.3'
    s.dependency 'FittedSheets', '~> 1.4.6'
    s.dependency 'SkeletonView', '~> 1.21.2'
    s.dependency 'HestiaBridgeWebView', '~> 0.1'
    s.dependency 'CommonBridgeCommand', '~> 0.3.0'
    s.dependency 'JanusBridge', '~> 0.1'
    s.dependency 'Apollo', '~> 2.0'
    s.dependency 'ApolloTheme', '~> 1.0'
    s.dependency 'TerraInstancesManager', '~> 2.1'
    s.dependency 'TekoTracker', '~> 1.0'
      
  end
