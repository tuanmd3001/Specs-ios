Pod::Spec.new do |s|
	s.name                   = 'TripiCommon'
	s.version                = '2.0.1'
	s.summary                = 'TripiCommon.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = { :http => 'https://github.com/teko-vn/Specs-ios/releases/download/' + s.name.to_s + '-v' + s.version.to_s + '/TripiCommon.framework.zip' }
	s.vendored_frameworks    = 'TripiCommon.framework'
	s.public_header_files    = 'TripiCommon.framework/Headers/*.h'
	s.source_files           = 'TripiCommon.framework/Headers/*.{h,m,swift}'

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}

	s.ios.deployment_target  = '10.0'

	s.dependency 'Alamofire', '~> 5.3.0'
	s.dependency 'Moya'
	s.dependency 'RxCocoa'
	s.dependency 'RxSwift'
	s.dependency 'SwiftyBeaver'
	s.dependency 'RxMoya'
	s.dependency 'RxBlocking'
	s.dependency 'Result'
end