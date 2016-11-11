Pod::Spec.new do |s|
  s.name                  = 'JudoShield'
  s.version               = '2.0.4'
  s.summary               = 'Judo Pay iOS Client SDK'
  s.homepage              = 'http://judopay.com/'
  s.license               = 'MIT'
  s.author                = { "Ashley Barrett" => 'ashley.barrett@judopayments.com' }
  s.source                = { :git => 'https://github.com/JudoPay/JudoShield.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.requires_arc          = true
  s.preserve_paths        = [ 'Framework/*', 'Source/*' ]
  s.vendored_frameworks   = "Framework/JudoShield.framework"
  s.frameworks            = 'CoreLocation', 'Security', 'CoreTelephony'
end
