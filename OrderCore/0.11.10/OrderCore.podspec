Pod::Spec.new do |s|
    s.name             = 'OrderCore'
    s.version          = '0.11.10'
    s.summary          = 'OrderCore'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/41719058',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'OrderCore.framework'
  
    s.public_header_files = 'OrderCore.framework/Headers/*.h'
    s.source_files = 'OrderCore.framework/Headers/*.{h, m, swift}'
  
    # dependency
    s.dependency 'TerraInstancesManager'
    s.dependency 'TekCoreService'
    s.dependency 'TekCoreNetwork' 
    s.dependency 'Terra', '~> 2.5.3'
    s.dependency 'Logging'   
                     
  end