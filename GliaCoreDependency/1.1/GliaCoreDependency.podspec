Pod::Spec.new do |s|
  s.name         = 'GliaCoreDependency'
  s.version      = '1.1'
  s.summary      = 'Glia Core SDK dependency'
  s.description  = 'The Glia Core SDK brings the in-person customer experience to iOS devices.'
  s.homepage     = 'https://github.com/salemove/ios-bundle'
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author       = "Glia Technologies"
  s.source       = { :http => 'https://github.com/salemove/glia-ios-podspecs/releases/download/1.1/GliaCoreDependency.xcframework.zip' }

  s.module_name = 'GliaCoreDependency'
  s.ios.deployment_target = "12.0"
  s.ios.vendored_frameworks = 'GliaCoreDependency.xcframework'
  s.swift_version = '5.3'
end
