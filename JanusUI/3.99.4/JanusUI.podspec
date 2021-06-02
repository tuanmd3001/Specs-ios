Pod::Spec.new do |s|
    s.name             = 'JanusUI'
    s.version          = '3.99.4'
    s.summary          = 'Teko AuthUI SDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/37941487',
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
    
    s.vendored_frameworks = 'JanusUI.framework'
  
    s.public_header_files = 'JanusUI.framework/Headers/*.h'
    s.source_files = 'JanusUI.framework/Headers/*.{h, m, swift}'
  
    s.dependency 'Janus', '~> 3.99.4'
    s.dependency 'JanusFacebook', '~> 3.99.4'
    s.dependency 'JanusGoogle', '~> 3.99.4'
    s.dependency 'JanusApple', '~> 3.99.4'
    s.dependency 'Kingfisher', '~> 6.0'
    s.dependency 'Toast-Swift', '~> 5.0.1'
    s.dependency 'MBProgressHUD', '~> 1.2.0'
    s.dependency 'Apollo', '0.4.23'
    s.dependency 'Terra', '~> 2.5.3'
    
  end
