#
# Be sure to run `pod lib lint Tekit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'Janus'
    s.version          = '2.1.4'
    s.summary          = 'AuthService of Tek.'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = { :http => 'http://github.com/teko-vn/Specs-ios/releases/download/' + s.name.to_s + '-v' + s.version.to_s + '/' + s.name.to_s + '.zip' }

    s.ios.deployment_target = '10.0'

    s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'Janus.framework'
  
    s.public_header_files = 'Janus.framework/Headers/*.h'
    s.source_files = 'Janus.framework/Headers/*.{h, m, swift}'
  
    # dependency
    s.dependency 'TekCoreService', '1.2.2'

    s.dependency 'FacebookCore', '~> 0.9.0'
    s.dependency 'FacebookLogin', '~> 0.9.0'
    s.dependency 'FacebookShare', '~> 0.9.0'
    s.dependency 'GoogleSignIn', '~> 5.0.2'
    s.dependency 'SwiftyJSON', '~> 4.0'
    s.dependency 'TerraInstancesManager', '~> 1.0.8'

  end