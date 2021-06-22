Pod::Spec.new do |s|
    s.name             = 'TripiHotelPaymentKit'
    s.version          = '1.1.2'
    s.summary          = 'TripiHotelPaymentKitSDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/39038591',
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
    
    s.vendored_frameworks = 'TripiHotelPaymentKit.framework'
  
    s.public_header_files = 'TripiHotelPaymentKit.framework/Headers/*.h'
    s.source_files = 'TripiHotelPaymentKit.framework/Headers/*.{h, m, swift}'
  
    s.dependency 'TripiCommon', '~> 1.1.1'
    s.dependency 'MAPaymentKit', '~> 1.0.10'

  end