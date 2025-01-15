Pod::Spec.new do |spec|
    spec.name               = 'YieldloveAdIntegration'
    spec.version            = '9.10.0'
    spec.summary            = 'We help publishers unlock the full ad revenue potential of their websites and apps.'
    spec.license            = { :type => 'Commercial', :file => 'LICENSE' }
    spec.description        = 'We help publishers unlock the full ad revenue potential of their websites and apps. Our platform ensures that every single ad impression is sold for the highest price possible.'
    spec.homepage           = 'https://yieldlove.com/'
    spec.documentation_url  = 'https://stroeerdigitalgroup.atlassian.net/wiki/x/FgGyc'
    spec.author             = { 'Pascal Salesch' => 'pascal.salesch@yieldlove.com' }
    spec.source             = { :http => 'https://slabs-yieldlove-ad-integration.s3.eu-central-1.amazonaws.com/ios/yieldlove-ad-integration-9.9.0.tgz' }
    
    spec.requires_arc       = true
    spec.platforms          = { :ios => '12.0' }
    spec.static_framework   = true
    spec.swift_version      = '5.0'

    # Default Core
    spec.default_subspecs = 'Core'

    # Core Subspec
    spec.subspec 'Core' do |core|
        core.source_files       = 'YieldloveAdIntegration/Classes/**/*.swift'
        core.resource_bundles   = { 'YieldloveAdIntegration' => ['YieldloveAdIntegration/Resources/*.xcprivacy'] }
        core.dependency 'PrebidMobile', '2.2.3'
        core.dependency 'Google-Mobile-Ads-SDK'
        core.dependency 'YieldloveExternalConfiguration', '0.23.0'
    end

    # Subspec: Confiant
    spec.subspec 'Confiant' do |confiant|
        confiant.preserve_paths = 'Plugins/Monitoring/ConfiantPlugin/**/*'
        confiant.source_files   = 'Plugins/Monitoring/ConfiantPlugin/ConfiantPlugin/Classes/**/*.swift'
        confiant.dependency     'ConfiantSDK'
        confiant.dependency     'YieldloveAdIntegration/Core'
    end

    # Subspec: Gravite
    spec.subspec 'Gravite' do |gravite|
        gravite.preserve_paths = 'Plugins/Backfill/GravitePlugin/**/*'
        gravite.source_files   = 'Plugins/Backfill/GravitePlugin/GravitePlugin/Classes/**/*.swift'
        gravite.dependency     'AATKit/Core'
        gravite.dependency     'YieldloveAdIntegration/Core'
    end
end