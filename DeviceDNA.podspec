Pod::Spec.new do |s|
  s.name                  = 'DeviceDNA'
  s.version               = '2.1.1'
  s.summary               = 'Judopay Device DNA client for iOS'
  s.homepage              = 'https://judopay.com/'
  s.license               = 'MIT'
  s.author                = { "Judopay" => 'developersupport@judopayments.com' }
  s.source                = { :git => 'https://github.com/Judopay/DeviceDNA-iOS.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.requires_arc          = true
  s.vendored_frameworks   = 'DeviceDNA.xcframework'
  s.frameworks            = 'CoreLocation', 'Security', 'CoreTelephony'
end
