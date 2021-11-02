Pod::Spec.new do |s|
    s.name             = 'TerraBOM'
    s.version          = '2.0.0'
    s.summary          = 'TerraBOM podspec'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/47976958',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
    # dependency
    s.dependency 'Apollo', '~> 1.2'
    s.dependency 'ApolloTheme', '~> 1.0'

    s.dependency 'TerraJsBridge', '~> 0.3'

    s.dependency 'Hestia', '~> 2.12'
    s.dependency 'HestiaIOS', '~> 2.10'
    s.dependency 'HestiaReactNative', '~> 0.1'
    s.dependency 'HestiaWebApp', '~> 0.3'

    s.dependency 'Janus', '~> 3.5'
    s.dependency 'JanusApple', '~> 3.5'
    s.dependency 'JanusFacebook', '~> 3.5'
    s.dependency 'JanusGoogle', '~> 3.6'
    s.dependency 'JanusUI', '~> 3.7'

    s.dependency 'LoyaltyComponent', '~> 1.2'
    s.dependency 'LoyaltyCore', '~> 1.1'
    s.dependency 'LoyaltyModel', '~> 1.1'
    s.dependency 'LoyaltyStaffUI', '~> 1.1'
    s.dependency 'LoyaltyConsumerUI', '~> 2.0'
    s.dependency 'LoyaltyBridge', '~> 0.1'

    s.dependency 'MAKitConnector', '~> 2.0'
    s.dependency 'MAPaymentKit', '~> 2.0'
    s.dependency 'Minerva', '~> 3.13'
    s.dependency 'MinervaUI', '~> 3.14'
    s.dependency 'TekoTracker', '~> 1.1'

    s.dependency 'Terra', '~> 3.1'
    s.dependency 'TerraInstancesManager', '~> 2.1'
    s.dependency 'TerraJsBridge', '~> 0.3'
    s.dependency 'TerraJsReactNative', '~> 0.3'
    s.dependency 'Hermes', '~> 1.1'

  end