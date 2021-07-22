Pod::Spec.new do |s|
    s.name             = 'BillingAppSDK'
    s.version          = '0.0.1'
    s.summary          = 'Tek Billing App SDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/40809351',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'BillingAppSDK.xcframework'
  
    s.dependency 'Kingfisher', '~> 6.0'
    s.dependency 'SVProgressHUD'
    s.dependency 'SnapKit'
    s.dependency 'Toast-Swift', '~> 5.0.0'
    s.dependency 'SVProgressHUD'
    s.dependency 'MAPaymentKit', '~> 1.2.1'
    s.dependency 'Apollo', '~> 1.0.13'
    s.dependency 'ApolloTheme', '~> 0.2.9'
    s.dependency 'TerraJsBridge', '~> 0.1.7'
    s.dependency 'TerraInstancesManager', '~> 1.2.24'
    s.dependency 'HestiaWebApp', '~> 0.0.5'
    s.dependency 'HestiaIOS', '~> 2.8.4'
    s.dependency 'MAAuthKit', '~> 1.0.2'

  end