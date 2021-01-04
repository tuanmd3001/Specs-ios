Pod::Spec.new do |s|
	s.name                   = 'TripiCommon'
	s.version                = '0.0.2'
	s.summary                = 'TripiCommon.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = {
	                             :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/28227138',
	                             :type => 'zip',
	                             :headers => [
	                               'Authorization => token ' + ENV['GITHUB_USER_TOKEN'],
	                               'Accept => application/octet-stream'
	                             ]
	                           }
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
	s.dependency 'RxMoya'
	s.dependency 'RxBlocking'
end