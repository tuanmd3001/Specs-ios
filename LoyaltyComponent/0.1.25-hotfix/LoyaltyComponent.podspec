Pod::Spec.new do |s|
    s.name             = 'LoyaltyComponent'
    s.version          = '0.1.25'
    s.summary          = 'LoyaltyComponent'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/38454336',
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
    
    s.vendored_frameworks = 'LoyaltyComponent.framework'
  
    s.dependency 'TerraInstancesManager'
    s.dependency 'FittedSheets', '~> 1.4.6'
    s.dependency 'Kingfisher'
    s.dependency 'ApolloTheme', '~> 0.0.1'
    s.dependency 'Apollo'
    s.dependency 'LoyaltyModel', '~> 0.1.23'
    
  end
