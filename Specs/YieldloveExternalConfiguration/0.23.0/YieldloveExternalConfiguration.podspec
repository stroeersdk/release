Pod::Spec.new do |spec|
  spec.name             = 'YieldloveExternalConfiguration'
  spec.version          = '0.23.0'
  spec.summary          = 'External configuration module for YieldloveAdIntegration'
  spec.description      = 'Configure ad slots by providing an appName and adSlotName'
  spec.homepage         = 'https://yieldlove.com/'
  spec.documentation_url  = 'https://stroeerdigitalgroup.atlassian.net/wiki/x/FgGyc'
  spec.license          = { :type => 'Commercial', :file => 'LICENSE' }
  spec.authors          = { 'Marcel Klínek' => 'marcel.klinek@ibillboard.com', 'Gianpiero Bozza' => 'gianpiero.bozza@ibillboard.com'}
  spec.source           = { :http => 'https://slabs-yieldlove-ad-integration.s3.eu-central-1.amazonaws.com/ios/yieldlove-external-configuration-0.23.0.tgz' }
  spec.requires_arc     = true
  spec.platforms        = { :ios => '12.0' }
  spec.static_framework = true
  spec.swift_version    = '5.0'
  spec.resource_bundles = {'YieldloveExternalConfiguration' => ['YieldloveExternalConfiguration/Resources/*.xcprivacy']}
  spec.source_files     = 'YieldloveExternalConfiguration/Classes/**/*.swift'
  spec.dependency 'PromiseKit', '~> 8'

end
