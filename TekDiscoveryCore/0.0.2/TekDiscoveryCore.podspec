Pod::Spec.new do |s|
    s.name             = 'TekDiscoveryCore'
    s.version          = '0.0.2'
    s.summary          = 'Discovery core for connecting api'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/34907900',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'TekDiscoveryCore.framework'
  
    s.public_header_files = 'TekDiscoveryCore.framework/Headers/*.h'
    s.source_files = 'TekDiscoveryCore.framework/Headers/*.{h,m,swift}'
  
    # dependency
    s.dependency 'TekCoreService', '~> 1.2.10'
    s.dependency 'TerraInstancesManager'
  end
