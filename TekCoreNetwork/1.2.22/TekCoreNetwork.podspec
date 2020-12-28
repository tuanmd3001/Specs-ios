#
# Be sure to run `pod lib lint Tekit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'TekCoreNetwork'
    s.version          = '1.2.22'
    s.summary          = 'CoreNetwork of Tek.'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
    s.description      = <<-DESC
  TekCoreNetwork framework static alamofire
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = { :http => 'http://github.com/teko-vn/Specs-ios/releases/download/' + s.name.to_s + '-v' + s.version.to_s + '/' + s.name.to_s + '.zip' }
  
    s.ios.deployment_target = '10.0'

    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.user_target_xcconfig = { 
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 
      'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' 
    }

    s.vendored_frameworks = 'TekCoreNetwork.framework'
      
    s.public_header_files = 'TekCoreNetwork.framework/Headers/*.h'
    s.source_files = 'TekCoreNetwork.framework/Headers/*.{h, m, swift}'
  
    # dependency
    s.dependency 'Alamofire', '~> 5.3.0'
  
  
  end