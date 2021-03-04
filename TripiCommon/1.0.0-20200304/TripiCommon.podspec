Pod::Spec.new do |s|
	s.name                   = 'TripiCommon'
	s.version                = '1.0.0-20200304'
	s.summary                = 'TripiCommon.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = { 
                                 :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/32930866',
                                 :type => 'zip',
                                 :headers => [
                                                 'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                                                 'Accept: application/octet-stream'
                                             ]
                               }
	s.vendored_frameworks    = 'TripiCommon.framework'
	s.ios.deployment_target  = '10.0'
	s.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
	s.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}

	s.dependency 'Moya/RxSwift', '~> 14.0'
	s.dependency 'RxCocoa', '~> 5.1.0'
	s.dependency 'RxSwift', '~> 5.1.1'
	s.dependency 'Alamofire', '~> 5.3.0'
end