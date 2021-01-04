Pod::Spec.new do |s|
	s.name                   = 'CallAppSDK'
	s.version                = '0.0.1'
	s.summary                = 'CallAppSDK.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = {
	                             :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/27632487',
	                             :type => 'zip',
	                             :headers => [
	                               'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
	                               'Accept: application/octet-stream'
	                             ]
	                           }
	s.vendored_frameworks    = 'CallAppSDK.framework'
	s.public_header_files    = 'CallAppSDK.framework/Headers/*.h'
	s.source_files           = 'CallAppSDK.framework/Headers/*.{h,m,swift}'

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}
end