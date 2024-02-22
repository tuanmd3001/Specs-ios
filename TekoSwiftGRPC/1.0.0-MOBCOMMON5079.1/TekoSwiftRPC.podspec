Pod::Spec.new do |s|

    s.name = 'TekoSwiftGRPC'
    s.module_name = 'SwiftGRPC'
    s.version = '1.0.0-MOBCOMMON5079.1'
    s.license = { :type => 'Apache 2.0', :file => 'LICENSE' }
    s.summary = 'Swift gRPC code generator plugin and runtime library'
    s.homepage = 'https://www.grpc.io'
    s.authors  = { 'The gRPC contributors' => 'grpc-packages@google.com' }

    s.swift_version = '5.2'
    s.ios.deployment_target = '10.0'
    s.osx.deployment_target = '10.12'
    s.source = { :git => 'https://' + ENV['GITHUB_USER_TOKEN'] + '@github.com/teko-vn/grpc-swift.git', :tag => s.version }

    s.source_files = 'Sources/GRPC/**/*.{swift,c,h}'

    s.dependency 'Logging', '>= 1.4.0', '< 2'
    s.dependency 'SwiftNIO', '>= 2.25.0', '< 3'
    s.dependency 'SwiftNIOExtras', '>= 1.7.0', '< 2'
    s.dependency 'SwiftNIOHTTP2', '>= 1.16.2', '< 2'
    s.dependency 'SwiftNIOSSL', '>= 2.10.1', '< 3'
    s.dependency 'SwiftNIOTransportServices', '>= 1.9.1', '< 2'
    s.dependency 'SwiftProtobuf', '>= 1.14.0', '< 2'
    s.dependency 'CGRPCZlib', s.version.to_s

end
