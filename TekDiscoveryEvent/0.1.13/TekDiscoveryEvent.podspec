Pod::Spec.new do |s|
    s.name             = 'TekDiscoveryEvent'
    s.version          = '0.1.13'
    s.summary          = 'Discovery event'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/39131232',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'TekDiscoveryEvent.framework'
  
    s.public_header_files = 'TekDiscoveryEvent.framework/Headers/*.h'
    s.source_files = 'TekDiscoveryEvent.framework/Headers/*.{h,m,swift}'
  
    # dependency
    s.dependency 'TekCoreService', '~> 1.2.11'
    s.dependency 'TekListingService', '~> 3.0.1'
    s.dependency 'TekPolicyService', '~> 3.0.1'
    s.dependency 'TekSearchService', '~> 3.0.1'
    s.dependency 'TekDiscoveryCore'
    s.dependency 'TerraInstancesManager'
  end
