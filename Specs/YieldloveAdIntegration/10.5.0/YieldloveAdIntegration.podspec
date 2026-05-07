Pod::Spec.new do |spec|
  spec.name               = 'YieldloveAdIntegration'
  spec.version            = '10.5.0'
  spec.summary            = 'A lightweight SDK that helps publishers maximize ad revenue across mobile websites and apps.'
  spec.license            = { :type => 'Commercial', :file => 'LICENSE' }
  spec.description        = 'We provide publishers with a platform that maximizes ad monetization, ensuring every impression is optimized for top-tier revenue performance.'
  spec.homepage           = 'https://yieldlove.com/'
  spec.documentation_url  = 'https://stroeerdigitalgroup.atlassian.net/wiki/x/FgGyc'
  spec.author             = { 'Stroeer Labs' => 'stroeerlabs@adscale.co.nz' }
  spec.source             = { :http => "https://github.com/stroeersdk/release/raw/refs/heads/main/Specs/YieldloveAdIntegration/10.5.0/yieldlove-ad-integration-10.5.0.tgz" }
  spec.requires_arc       = true
  spec.platforms          = { :ios => '15.0' }
  spec.static_framework   = true
  spec.swift_version      = '5.0'

  # Default Core
  spec.default_subspecs = 'Core'

  spec.subspec 'Core' do |core|
    core.source_files       = 'YieldloveAdIntegration/Classes/**/*.{swift,h,m,mm}'
    core.resource_bundles   = { 'YieldloveAdIntegration' => ['YieldloveAdIntegration/Resources/*.xcprivacy', 'YieldloveAdIntegration/Resources/admin/**/*.html'] }
    core.dependency 'PrebidMobile', '3.1.0'
    core.dependency 'PromiseKit', '~>8'
    core.dependency 'Google-Mobile-Ads-SDK', '12.11.0'
    core.dependency 'GCDWebServer', '~>3.5'
  end

  spec.subspec 'Consent' do |consent|
    consent.preserve_paths = 'Plugins/YieldloveConsent/YieldloveConsent/**/*'
    consent.source_files   = 'Plugins/YieldloveConsent/YieldloveConsent/Classes/**/*.swift'
    consent.dependency     'YieldloveAdIntegration/Core'
    consent.dependency     'ConsentViewController', '~>7.12'
  end
  
  #Plugin Placeholder
  
end
