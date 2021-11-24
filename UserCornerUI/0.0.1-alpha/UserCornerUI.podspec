#
# Be sure to run `pod lib lint Tekit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'UserCornerUI'
    s.version          = '0.0.1-alpha'
    s.summary          = 'UserCornerUI framework'
  
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
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/50190605',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }

    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
    s.vendored_frameworks = 'UserCornerUI.xcframework'
  
    # dependency
    s.dependency 'TerraInstancesManager', '~> 2.1'
    s.dependency 'Hermes', '~> 1.2'
    s.dependency 'Apollo', '~> 2.0'
    s.dependency 'Apollo', '~> 2.0'
    s.dependency 'HestiaWebApp', '~> 1.0'
    s.dependency 'TerraJsBridge'
    s.dependency 'CommonBridgeCommand', '~> 0.3'
    s.dependency 'UserCornerCore', '0.0.1-alpha'
  end
