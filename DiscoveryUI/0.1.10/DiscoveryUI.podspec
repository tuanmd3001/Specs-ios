Pod::Spec.new do |s|
    s.name             = 'DiscoveryUI'
    s.version          = '0.1.10'
    s.summary          = 'DiscoveryUI'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/34579174',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'DiscoveryUI.framework'
  
    s.public_header_files = 'DiscoveryUI.framework/Headers/*.h'
    s.source_files = 'DiscoveryUI.framework/Headers/*.{h,m,swift,xib}'
  
    # dependency terra
    s.dependency 'Terra'
    s.dependency 'TekPolicyService'
    s.dependency 'TekListingService'
    s.dependency 'TekSearchService'
    s.dependency 'TekDiscoveryEvent'
  end
