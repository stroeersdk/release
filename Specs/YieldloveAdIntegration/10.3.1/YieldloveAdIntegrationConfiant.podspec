Pod::Spec.new do |spec|
  spec.name               = 'YieldloveAdIntegration'
  spec.version            = '10.3.1'
  spec.summary            = 'A lightweight SDK that helps publishers maximize ad revenue across mobile websites and apps.'
  spec.license            = { :type => 'Commercial', :file => 'LICENSE' }
  spec.description        = 'We provide publishers with a platform that maximizes ad monetization, ensuring every impression is optimized for top-tier revenue performance.'
  spec.homepage           = 'https://yieldlove.com/'
  spec.documentation_url  = 'https://stroeerdigitalgroup.atlassian.net/wiki/x/FgGyc'
  spec.author             = { 'Stroeer Labs' => 'stroeerlabs@adscale.co.nz' }
  spec.source             = { :http => "https://github.com/stroeersdk/release/raw/refs/heads/main/Specs/YieldloveAdIntegration/10.3.1/yieldlove-ad-integrationConfiant-10.3.1.tgz" }
  spec.requires_arc       = true
  spec.platforms          = { :ios => '15.0' }
  spec.static_framework   = true
  spec.swift_version      = '5.0'

  # Default Core
  spec.default_subspecs = 'Core'

  spec.subspec 'Core' do |core|
    core.source_files       = 'YieldloveAdIntegration/Classes/**/*.{swift,h,m,mm}'
    core.resource_bundles   = { 'YieldloveAdIntegration' => ['YieldloveAdIntegration/Resources/*.xcprivacy'] }
    core.dependency 'PrebidMobile', '3.1.0'
    core.dependency 'PromiseKit', '~>8'
    core.dependency 'Google-Mobile-Ads-SDK', '~>12'
  end

    spec.subspec 'Consent' do |consent|
        consent.preserve_paths = 'Plugins/YieldloveConsent/YieldloveConsent/**/*'
        consent.source_files   = 'Plugins/YieldloveConsent/YieldloveConsent/Classes/**/*.swift'
        consent.dependency     'YieldloveAdIntegration/Core'
        consent.dependency     'ConsentViewController', '~>7.7.7'
    end

    spec.subspec 'Confiant' do |confiant|
        confiant.preserve_paths = 'Plugins/Monitoring/ConfiantPlugin/**/*'
        confiant.source_files   = 'Plugins/Monitoring/ConfiantPlugin/ConfiantPlugin/Classes/**/*.swift'
        confiant.dependency     'ConfiantSDK'
        confiant.dependency     'YieldloveAdIntegration/Core'
    end

  spec.subspec 'Gravite' do |gravite|
    gravite.preserve_paths = 'Plugins/Backfill/GravitePlugin/**/*'
    gravite.source_files   = 'Plugins/Backfill/GravitePlugin/GravitePlugin/Classes/**/*.swift'
    gravite.dependency     'AATKit/Core', '3.12.3'
    gravite.dependency     'YieldloveAdIntegration/Core'
  end
end
