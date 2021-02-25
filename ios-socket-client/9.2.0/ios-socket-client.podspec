Pod::Spec.new do |s|
  s.name         = "ios-socket-client"
  s.module_name  = "SocketIO"
  s.version      = "9.2.0"
  s.summary      = "Socket.IO-client for iOS and OS X"
  s.description  = <<-DESC
                   Socket.IO-client for iOS and OS X.
                   Supports ws/wss/polling connections and binary.
                   For socket.io 1.0+ and Swift.
                   DESC
  s.homepage     = "https://github.com/salemove/ios-socket-client"
  s.license      = { :type => 'MIT' }
  s.author       = { 'Salemove' => 'support@salemove.com' }
  s.ios.deployment_target = '9.0'
  s.source       = { :git => "https://github.com/salemove/ios-socket-client.git", :tag => 'v9.2.0' }
  s.source_files  = "Source/**/*.swift"
  s.requires_arc = true
  s.swift_version = "5.0"
  
end