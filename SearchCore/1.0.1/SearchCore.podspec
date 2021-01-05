#
#  Be sure to run `pod spec lint SearchCore-base.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "SearchCore"
  spec.version      = "1.0.1"
  spec.summary      = "SearchCore service."
  spec.description  = "SearchCore library long description ..."

  spec.homepage     = 'https://github.com/teko-vn/Specs-ios.git'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Hoàng Hải" => "hai.hm@teko.vn" }

  spec.source           = {
    :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/30289697',
    :type => 'zip',
    :headers => [
      'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
      'Accept: application/octet-stream'
    ]
  }

  spec.ios.deployment_target = '10.0'

  spec.vendored_frameworks = "SearchCore.framework"
  spec.source_files  = "SearchCore.framework/**/*.{h,m}"

  spec.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  spec.dependency 'TekCoreService', '~> 1.2.2'
  spec.dependency 'TerraInstancesManager', '~> 1.1.0'
  
end
