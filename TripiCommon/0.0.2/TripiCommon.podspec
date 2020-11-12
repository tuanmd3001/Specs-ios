Pod::Spec.new do |s|
	s.name                   = 'TripiCommon'
	s.version                = '0.0.2'
	s.summary                = 'TripiCommon.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = { :https => 'https://github.com/teko-vn/Specs-ios/releases/download/TripiCommon-v0.0.2/TripiCommon.framework.zip' }
	s.vendored_frameworks    = 'TripiCommon.framework'
	s.public_header_files    = 'TripiCommon.framework/Headers/*.h'
	s.source_files           = 'TripiCommon.framework/Headers/*.{h,m,swift}'

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}

	s.dependency 'Alamofire'
	s.dependency 'Moya/RxSwift'
	s.dependency 'Result'
	s.dependency 'RxCocoa'
	s.dependency 'RxSwift'
	s.dependency 'SwiftyBeaver'
end