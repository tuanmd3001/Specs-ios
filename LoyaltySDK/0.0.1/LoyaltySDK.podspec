Pod::Spec.new do |spec|
	spec.name = 'LoyaltySDK'
	spec.version = '0.0.1'

	spec.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
	spec.license          = { :type => 'MIT', :file => 'LICENSE' }
	spec.author           = { '$(git config user.name)' => '$(git config user.email)' }

	spec.description      = <<-DESC
  		iOS Loyalty SDK
                         DESC

	spec.summary = "Loyalty SDK"

	spec.ios.deployment_target = '10.0'

	spec.source = {
		:http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/34907240',
		:type => 'zip',
		:headers => [
			'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
			'Accept: application/octet-stream'
		]
	}

	spec.pod_target_xcconfig = {
		'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
	}
    
	spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

	spec.subspec 'Model' do |model|
		model.vendored_frameworks = 'LoyaltyModel.framework'
	end

	spec.subspec 'Core' do |core|
		core.vendored_frameworks = 'LoyaltyCore.framework'

		core.dependency 'TekCoreService'
		core.dependency 'TerraInstancesManager'
		core.dependency 'LoyaltySDK/Model'
	end

	spec.subspec 'UI' do |ui|
		ui.vendored_frameworks = 'LoyaltyUI.framework'

		ui.dependency 'LoyaltySDK/Core'
	end

	spec.subspec 'Component' do |component|
		component.vendored_frameworks = 'LoyaltyComponent.framework'

		component.dependency 'LoyaltySDK/Model'
		component.dependency 'IQKeyboardManagerSwift'
		component.dependency 'Logging'
		component.dependency 'FittedSheets'
		component.dependency 'Kingfisher'
	end

	spec.default_subspecs = 'Model', 'Core', 'UI', 'Component'

end
