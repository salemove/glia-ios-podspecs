Pod::Spec.new do |s|
  s.name         = 'SwiftPhoenixClient'
  s.version      = '1.2.1'
  s.summary      = 'Connect your Phoenix and iOS applications through WebSockets!'
  s.description  = <<-EOS
  SwiftPhoenixClient is a Swift port of phoenix.js, abstracting away the details
  of the Phoenix Channels library and providing a near identical experience
  to connect to your Phoenix WebSockets on iOS.
  RxSwift extensions exist as well when subscribing to channel events.
  A default Transport layer is implmenented for iOS 13 or later. If targeting
  an earlier iOS version, please see the StarscreamSwiftPhoenixClient extention.
  EOS
  s.homepage     = 'https://github.com/davidstump/SwiftPhoenixClient'
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author       = { "David Stump" => "david@davidstump.net" }
  s.source       = { :http => 'https://github.com/salemove/glia-ios-podspecs/releases/download/1.0/SwiftPhoenixClient.xcframework.zip' }

  s.module_name = 'SwiftPhoenixClient'
  s.ios.deployment_target = "12.0"
  s.ios.vendored_frameworks = 'SwiftPhoenixClient.xcframework'
  s.swift_version = '5.3'
end
