Pod::Spec.new do |s|
    s.name             = 'VNShopWebSDK'
    s.version          = '0.2.0'
    s.summary          = 'VNShop Web SDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/49318158',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'VNShopWebSDK.xcframework'
    
    s.dependency 'TerraInstancesManager', '~> 2.1'
    s.dependency 'CommonBridgeCommand', '~> 0.2'
    s.dependency 'HestiaWebApp', '~> 0.4'
    s.dependency 'HestiaIOS', '~> 2.13'
    s.dependency 'TerraJsBridge', '~> 0.3'
    s.dependency 'PaymentKitJsBridge', '~> 0.2'
    
  end