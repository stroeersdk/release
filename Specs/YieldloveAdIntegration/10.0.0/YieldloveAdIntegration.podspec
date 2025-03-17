Pod::Spec.new do |spec|
    spec.name               = 'YieldloveAdIntegration'
    spec.version            = '10.0.0'
    spec.summary            = 'We help publishers unlock the full ad revenue potential of their websites and apps.'
    spec.license            = { :type => 'Commercial', :file => 'LICENSE' }
    spec.description        = 'We help publishers unlock the full ad revenue potential of their websites and apps. Our platform ensures that every single ad impression is sold for the highest price possible.'
    spec.homepage           = 'https://yieldlove.com/'
    spec.documentation_url  = 'https://stroeerdigitalgroup.atlassian.net/wiki/x/FgGyc'
    spec.author             = { 'Pascal Salesch' => 'pascal.salesch@yieldlove.com' }
    spec.source             = { :http => 'https://github.com/stroeersdk/release/raw/refs/heads/main/Specs/YieldloveAdIntegration/10.0.0/yieldlove-ad-integration-10.0.0T.tgz' }
    spec.requires_arc       = true
    spec.platforms          = { :ios => '15.0' }
    spec.static_framework   = true
    spec.swift_version      = '5.0'

    # Default Core
    spec.default_subspecs = 'Core'

    # Core Subspec
    spec.subspec 'Core' do |core|
        core.source_files       = 'YieldloveAdIntegration/Classes/**/*.{swift,h,m,mm}'
        core.resource_bundles   = { 'YieldloveAdIntegration' => ['YieldloveAdIntegration/Resources/*.xcprivacy'] }
        core.dependency 'PrebidMobile', '~>2.3.1'
        core.dependency 'PromiseKit', '~>8'
        core.dependency 'Google-Mobile-Ads-SDK', '~>11'
    end
    
    # Consent Subspec
    spec.subspec 'Consent' do |consent|
        consent.preserve_paths = 'Plugins/YieldloveConsent/YieldloveConsent/**/*'
        consent.source_files   = 'Plugins/YieldloveConsent/YieldloveConsent/Classes/**/*.swift'
        consent.dependency     'YieldloveAdIntegration/Core'
        consent.dependency     'ConsentViewController', '7.7.7'
    end
    

    # Subspec: Confiant
    # spec.subspec 'Confiant' do |confiant|
    #    confiant.preserve_paths = 'Plugins/Monitoring/ConfiantPlugin/**/*'
    #    confiant.source_files   = 'Plugins/Monitoring/ConfiantPlugin/ConfiantPlugin/Classes/**/*.swift'
    #    confiant.dependency     'ConfiantSDK'
    #    confiant.dependency     'YieldloveAdIntegration/Core'
    # end

    # Subspec: Gravite
    spec.subspec 'Gravite' do |gravite|
        gravite.preserve_paths = 'Plugins/Backfill/GravitePlugin/**/*'
        gravite.source_files   = 'Plugins/Backfill/GravitePlugin/GravitePlugin/Classes/**/*.swift'
        gravite.dependency     'AATKit/Core'
        gravite.dependency     'YieldloveAdIntegration/Core'
    end
end
