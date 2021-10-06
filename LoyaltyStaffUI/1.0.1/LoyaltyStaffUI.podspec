Pod::Spec.new do |s|
    s.name             = 'LoyaltyStaffUI'
    s.version          = '1.0.1'
    s.summary          = 'LoyaltyStaffUI'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/46352617',
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
    
    s.vendored_frameworks = 'LoyaltyStaffUI.xcframework'
  
    s.dependency 'LoyaltyCore', '~> 1.0'
    s.dependency 'ESPullToRefresh', '~> 2.9.3'
    s.dependency 'Apollo', '~> 1.0.16'
    s.dependency 'ApolloTheme', '~> 1.0'
    s.dependency 'FittedSheets', '~> 1.4.6'
      
  end