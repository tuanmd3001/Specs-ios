Pod::Spec.new do |s|
	s.name                   = 'TripiCommon'
	s.version                = '0.0.3'
	s.summary                = 'TripiCommon.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = {
	                             :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/28394212',
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

	s.ios.deployment_target  = '10.0'

	s.dependency 'Alamofire'
	s.dependency 'Moya'
	s.dependency 'RxCocoa'
	s.dependency 'RxSwift'
	s.dependency 'SwiftyBeaver'
end