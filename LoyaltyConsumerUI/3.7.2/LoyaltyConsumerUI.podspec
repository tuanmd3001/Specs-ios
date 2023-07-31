Pod::Spec.new do |s|
    s.name             = 'LoyaltyConsumerUI'
    s.version          = '3.7.2'
    s.summary          = 'LoyaltyConsumerUI'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/119379459',
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
  
    s.dependency 'LoyaltyCore', '~> 2.3'
    s.dependency 'ESPullToRefresh', '~> 2.9.3'
    s.dependency 'FittedSheets', '~> 1.4.6'
    s.dependency 'SkeletonView', '~> 1.21.2'
    s.dependency 'HestiaBridgeWebView', '~> 1.0'
    s.dependency 'CommonBridgeCommand', '~> 0.3'
    s.dependency 'JanusBridge', '~> 0.1'
    s.dependency 'Apollo', '~> 3.4'
    s.dependency 'ApolloTheme', '~> 1.0'
    s.dependency 'TerraInstancesManager', '~> 2.1'
    s.dependency 'TekoTracker', '~> 1.10'
    s.dependency 'LoyaltyBridge', '~> 0.2'
    s.dependency 'RSBarcodes_Swift', '~> 5.1.1'

  end