Pod::Spec.new do |s|
	s.name                   = 'TripiFlightKit'
	s.version                = '2.0.1-dev'
	s.summary                = 'TripiFlightKit.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = {
	                             :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/29562671',
	                             :type => 'zip',
	                             :headers => [
	                               'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
	                               'Accept: application/octet-stream'
	                             ]
	                           }
	s.vendored_frameworks    = 'TripiFlightKit.framework'
	s.public_header_files    = 'TripiFlightKit.framework/Headers/*.h'
	s.source_files           = 'TripiFlightKit.framework/Headers/*.{h,m,swift}'

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}

	s.ios.deployment_target  = '10.0'

	s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

	s.dependency 'Alamofire', '~> 5.3'
	s.dependency 'Moya'
	s.dependency 'Moya/RxSwift'
	s.dependency 'RxCocoa'
	s.dependency 'RxSwift'
	s.dependency 'SwiftyBeaver'
	s.dependency 'Cosmos'
	s.dependency 'SVProgressHUD'
	s.dependency 'IQKeyboardManagerSwift', '6.5.0'
	s.dependency 'UPCarouselFlowLayout'
	s.dependency 'Toast-Swift'
	s.dependency 'SDWebImage'
	s.dependency 'JVFloatLabeledTextField'
	s.dependency 'MarqueeLabel', '~> 3.2.0'
	s.dependency 'SkeletonView'

	s.dependency 'TripiCommon', '2.0.1'
	s.dependency 'CallAppSDK', '0.0.1'

end