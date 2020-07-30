Pod::Spec.new do |s|
  s.name             = 'TwilioVoice'
  s.version          = '5.5.0.g'
  s.summary          = 'Twilio Voice'
  s.description      = 'Twilio Voice makes it easy to embed VoIP directly into your iOS apps.'
  s.homepage         = 'http://www.twilio.com/docs/api/voice-sdk'
  s.license          = { :type => 'Commercial', :text => 'Copyright © 2011-2017 Twilio, Inc. All rights reserved. Use of this software is subject to the terms and conditions of the Twilio Terms of Service located at http://www.twilio.com/legal/tos' }
  s.author           = { 'Twilio' => 'help@twilio.com' }
  s.source           = { :git => 'https://github.com/salemove/twilio-voice-ios.git', :tag => '5.5.0' }

  s.documentation_url = 'https://twilio.github.io/twilio-voice-ios/docs/5.5.0'

  s.module_name = 'TwilioVoice'
  s.ios.deployment_target = '10.0'
  s.ios.vendored_frameworks = 'TwilioVoice.framework'
  s.swift_version = '5.2'
  s.requires_arc = true
  s.xcconfig = { 'OTHER_LDFLAGS': '-ObjC' }
  s.platform = :ios, '10.0'

  s.source_files = "TwilioVoice.framework/Headers/**/*.h"
  s.public_header_files = "TwilioVoice.framework/Headers/**/*.h"
  s.vendored_frameworks = "TwilioVoice.framework"
end
