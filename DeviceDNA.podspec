Pod::Spec.new do |s|
  s.name                  = 'DeviceDNA'
  s.version               = '0.1.8'
  s.summary               = 'Judopay Device DNA client for iOS'
  s.homepage              = 'http://judopay.com/'
  s.license               = 'MIT'
  s.author                = { "Ashley Barrett" => 'ashley.barrett@judopayments.com' }
  s.source                = { :git => 'https://github.com/Judopay/DeviceDNA-iOS.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.requires_arc          = true
  s.preserve_paths        = [ 'Framework/*', 'Source/*' ]
  s.vendored_frameworks   = "Framework/DeviceDNA.framework"
  s.frameworks            = 'CoreLocation', 'Security', 'CoreTelephony'
end
