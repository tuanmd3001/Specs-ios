Pod::Spec.new do |s|
    s.name             = 'LoyaltyConsumer'
    s.version          = '0.2.0'
    s.summary          = 'LoyaltyConsumer'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/38076944',
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
    
    s.vendored_frameworks = 'LoyaltyConsumer.framework'
  
    s.dependency 'TerraInstancesManager'
    s.dependency 'LoyaltyCore', '~> 0.1.15'
    s.dependency 'LoyaltyComponent'
    s.dependency 'LoyaltyUI', '~> 0.1.16'
    
  end