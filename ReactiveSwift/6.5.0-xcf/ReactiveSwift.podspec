Pod::Spec.new do |s|
  s.name         = 'ReactiveSwift'
  s.version      = '6.5.0-xcf'
  s.summary      = 'Streams of values over time'
  s.description  = 'ReactiveSwift is a Swift framework inspired by Functional Reactive Programming. It provides APIs for composing and transforming streams of values over time.'
  s.homepage     = 'https://github.com/ReactiveCocoa/ReactiveSwift'
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author       = "ReactiveCocoa"
  s.source       = { :http => 'https://github.com/salemove/glia-ios-podspecs/releases/download/1.0/ReactiveSwift.xcframework.zip' }

  s.module_name = 'ReactiveSwift'
  s.ios.deployment_target = "12.0"
  s.ios.vendored_frameworks = 'ReactiveSwift.xcframework'
  s.swift_version = '5.3'
end
