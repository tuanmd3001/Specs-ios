Pod::Spec.new do |s|
    s.name             = 'TripiFlightPaymentKit'
    s.version          = '1.1.3'
    s.summary          = 'TripiFlightPaymentKitSDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/40336964',
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
    
    s.vendored_frameworks = 'TripiFlightPaymentKit.framework'
  
    s.public_header_files = 'TripiFlightPaymentKit.framework/Headers/*.h'
    s.source_files = 'TripiFlightPaymentKit.framework/Headers/*.{h, m, swift}'
  
    s.dependency 'TripiCommon', '~> 1.1.1'
    s.dependency 'MAPaymentKit', '~> 1.1.1'

  end