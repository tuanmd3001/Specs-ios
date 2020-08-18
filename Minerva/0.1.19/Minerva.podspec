Pod::Spec.new do |s|
    s.name         = "Minerva"
    s.version      = "0.1.19"
    s.summary      = "Minerva SDK"
    s.description  = <<-DESC
    Minerva project
    DESC
    s.homepage     = "https://github.com/tungnx-teko/MinervaDistribution"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source       = { :git => "https://github.com/tungnx-teko/MinervaDistribution.git", :branch => "release/minerva-#{s.version}" }
    s.public_header_files = "Minerva.framework/Headers/*.h"
    s.source_files = "Minerva.framework/Headers/*.{h, m, swift}"
    s.vendored_frameworks = "Minerva.framework"
    s.platform = :ios, "10.0"
    s.dependency "MinervaCore"
end