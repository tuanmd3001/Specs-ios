Pod::Spec.new do |s|
    s.name         = "MinervaCore"
    s.version      = "0.1.12"
    s.summary      = "MinervaCore SDK"
    s.description  = <<-DESC
    MinervaCore project
    DESC
    s.homepage     = "https://github.com/tungnx-teko/MinervaCoreDistribution"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2020
                   Permission is granted to...
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source       = { :git => "https://github.com/tungnx-teko/MinervaCoreDistribution.git", :branch => "release/minerva-#{s.version}" }
    s.public_header_files = "MinervaCore.framework/Headers/*.h"
    s.source_files = "MinervaCore.framework/Headers/*.{h, m, swift}"
    s.vendored_frameworks = "MinervaCore.framework"
    s.platform = :ios, "10.0"
    # s.dependency "FirebaseFirestore"
end