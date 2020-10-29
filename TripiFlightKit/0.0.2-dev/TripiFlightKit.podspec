Pod::Spec.new do |s|
	s.name                   = 'TripiFlightKit'
	s.version                = '0.0.2-dev'
	s.summary                = 'TripiFlightKit.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = { :http => 'https://github.com/teko-vn/Specs-ios/releases/download/TripiFlightKit-v0.0.2-dev/TripiFlightKit.framework.zip' }
	s.vendored_frameworks    = 'TripiFlightKit.framework'
	s.public_header_files    = 'TripiFlightKit.framework/Headers/*.h'
	s.source_files           = 'TripiFlightKit.framework/Headers/*.{h,m,swift}'

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}

	s.dependency 'Alamofire'
	s.dependency 'Moya'
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
	s.dependency 'MarqueeLabel'

	s.dependency 'TripiCommon', '0.0.1'
	s.dependency 'CallAppSDK', '0.0.1'

end