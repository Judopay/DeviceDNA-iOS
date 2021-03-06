Pod::Spec.new do |s|
  s.name                  = 'DeviceDNA'
  s.version               = '1.1.3'
  s.summary               = 'Judopay Device DNA client for iOS'
  s.homepage              = 'https://judopay.com/'
  s.license               = 'MIT'
  s.author                = { "Judopay" => 'developersupport@judopayments.com' }
  s.source                = { :git => 'https://github.com/Judopay/DeviceDNA-iOS.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.3'
  s.requires_arc          = true
  s.preserve_paths        = [ 'Framework/*', 'Source/*' ]
  s.vendored_frameworks   = "Framework/DeviceDNA.framework"
  s.frameworks            = 'CoreLocation', 'Security', 'CoreTelephony'
end
