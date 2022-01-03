Pod::Spec.new do |s|
    s.name             = 'TripiCommon'
    s.version          = '1.1.2'
    s.summary          = 'TripiCommonSDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/53106694',
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
    
    s.vendored_frameworks = 'TripiCommon.framework'
  
    s.public_header_files = 'TripiCommon.framework/Headers/*.h'
    s.source_files = 'TripiCommon.framework/Headers/*.{h, m, swift}'
  
    s.dependency 'Moya/RxSwift', '~> 14.0'
    s.dependency 'RxCocoa', '~> 5.1.0'
    s.dependency 'RxSwift', '~> 5.1.1'
    s.dependency 'Alamofire', '~> 5.3.0'
    
  end