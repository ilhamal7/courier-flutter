Pod::Spec.new do |s|
  s.name             = 'courier_dart_sdk'
  s.version          = '1.0.0' # Bypass internal versions
  s.summary          = 'Native iOS support for Courier Flutter SDK.'
  s.description      = 'This is a security research placeholder for Courier Dart SDK to prevent dependency confusion.'
  s.homepage         = 'https://github.com/ilhamal7/courier-flutter'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Gojek Open Source' => 'oss@gojek.com' }
  s.source           = { :git => 'https://github.com/ilhamal7/courier-flutter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  s.source_files = 'ios/Classes/**/*'

  s.dependency 'Flutter'
  s.dependency 'CourierCore', '0.0.19'
  s.dependency 'CourierMQTT', '0.0.19'
end
