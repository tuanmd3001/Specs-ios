Pod::Spec.new do |s|
	s.name                   = 'TripiFlightKit'
	s.version                = '1.0.0-20200304'
	s.summary                = 'TripiFlightKit.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = { 
                                 :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/32930897',
                                 :type => 'zip',
                                 :headers => [
                                                 'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                                                 'Accept: application/octet-stream'
                                             ]
                               }
	s.vendored_frameworks    = 'TripiFlightKit.framework'
	s.ios.deployment_target  = '10.0'
	s.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
	s.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}

	s.dependency 'TripiCommon', '1.0.0-20200304'
	s.dependency 'Cosmos', '~> 18.0'
	s.dependency 'SVProgressHUD'
	s.dependency 'IQKeyboardManagerSwift', '~> 6.5.0'
	s.dependency 'Toast-Swift'
	s.dependency 'SDWebImage', '~> 5.1.1'
	s.dependency 'JVFloatLabeledTextField', '~> 1.1.1'
	s.dependency 'MarqueeLabel', '~> 3.2.0'
	s.dependency 'Moya/RxSwift', '~> 14.0'
	s.dependency 'RxCocoa', '~> 5'
	s.dependency 'Alamofire', '~> 5.3.0'
	s.dependency 'SkeletonView'
	s.dependency 'UPCarouselFlowLayout'
	s.dependency 'RealmSwift'
end