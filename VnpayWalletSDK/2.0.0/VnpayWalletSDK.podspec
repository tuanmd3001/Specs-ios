Pod::Spec.new do |s|
	s.name                   = 'VnpayWalletSDK'
	s.version                = '2.0.0'
	s.summary                = 'VnpayWalletSDK.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = { 
                                 :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/34350824',
                                 :type => 'zip',
                                 :headers => [
                                                 'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                                                 'Accept: application/octet-stream'
                                             ]
                               }
	s.vendored_frameworks    = 'VnpayWalletSDK.framework'
	s.ios.deployment_target  = '10.0'
	s.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
	s.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}

	s.dependency 'VNPayCore'
	s.dependency 'VNPAYKitLib'
end