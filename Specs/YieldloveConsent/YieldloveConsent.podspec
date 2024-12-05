Pod::Spec.new do |spec|
  spec.name             = 'YieldloveConsent'
  spec.version          = '6.5.0'
  spec.summary          = 'CMP module for YieldloveAdIntegration'
  spec.description      = 'Collect consent from users of your app to comply with GDPR and TCF'
  spec.homepage         = 'https://yieldlove.com/'
  spec.documentation_url  = 'https://stroeerdigitalgroup.atlassian.net/wiki/x/FgGyc'
  spec.license          = { :type => 'Commercial', :file => 'LICENSE' }
  spec.authors          = { 'Marcel Klínek' => 'marcel.klinek@ibillboard.com', 'Gianpiero Bozza' => 'gianpiero.bozza@ibillboard.com'}
  spec.source           = { :http => 'https://slabs-yieldlove-ad-integration.s3.eu-central-1.amazonaws.com/ios/yieldlove-consent-6.5.0.tgz' }
  spec.requires_arc     = true
  spec.platforms        = { :ios => '12.0' }
  spec.static_framework = true
  spec.swift_version    = '5.0'
  spec.source_files     = 'YieldloveConsent/Classes/**/*.swift'
  spec.resource_bundles = {'YieldloveConsent' => ['YieldloveConsent/Resources/*.xcprivacy']}
  spec.dependency 'ConsentViewController'
  spec.dependency 'YieldloveExternalConfiguration', '0.23.0'
end
