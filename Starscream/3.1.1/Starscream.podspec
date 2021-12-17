Pod::Spec.new do |s|
  s.name         = 'Starscream'
  s.version      = '3.1.1'
  s.summary      = 'A conforming WebSocket RFC 6455 client library in Swift.'
  s.homepage     = 'https://github.com/davidstump/SwiftPhoenixClient'
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author       = {'Dalton Cherry' => 'http://daltoniam.com', 'Austin Cherry' => 'http://austincherry.me'}
  s.source       = { :http => 'https://github.com/salemove/glia-ios-podspecs/releases/download/1.0/Starscream.xcframework.zip' }

  s.module_name = 'Starscream'
  s.ios.deployment_target = "12.0"
  s.ios.vendored_frameworks = 'Starscream.xcframework'
  s.swift_version = '5.3'
end
