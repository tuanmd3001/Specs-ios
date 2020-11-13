Pod::Spec.new do |s|
	s.name                   = 'RxBlocking'
	s.version                = '14.0.0'
	s.summary                = 'RxBlocking.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = { :http => 'https://github.com/teko-vn/Specs-ios/releases/download/RxBlocking-v14.0.0/RxBlocking.framework.zip' }
	s.vendored_frameworks    = 'RxBlocking.framework'
	s.public_header_files    = 'RxBlocking.framework/Headers/*.h'
	s.source_files           = 'RxBlocking.framework/Headers/*.{h,m,swift}'

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}
end