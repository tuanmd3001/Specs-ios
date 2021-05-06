Pod::Spec.new do |s|
    s.name             = 'LoyaltyCore'
    s.version          = '0.1.8'
    s.summary          = 'LoyaltyCore'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/36512957',
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
    
    s.vendored_frameworks = 'LoyaltyCore.framework'
  
    s.dependency 'TekCoreNetwork'
    s.dependency 'TekCoreService'
    s.dependency 'TerraInstancesManager'
    s.dependency 'Terra', '~> 2.5.3'
    s.dependency 'Logging'
    s.dependency 'LoyaltyModel'
    
  end
