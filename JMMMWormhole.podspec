Pod::Spec.new do |s|
  s.name     = 'JMMMWormhole'
  s.version  = '3.0.2'
  s.license  = 'MIT'
  s.summary  = 'Message passing between apps and extensions.'
  s.homepage = 'https://github.com/mutualmobile/MMWormhole'
  s.authors  = { 'Conrad Stoll' => 'conrad.stoll@mutualmobile.com' }
  s.source   = { :git => 'https://github.com/JioMeet/MMWormhole.git', :branch => 'master' }
  s.requires_arc = true
  
  s.default_subspec = 'Core'

  s.ios.deployment_target = '12.0'
  
  s.ios.frameworks = 'Foundation', 'WatchConnectivity'
  s.osx.frameworks = 'Foundation'
  s.watchos.frameworks = 'Foundation', 'WatchConnectivity'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.subspec 'Core' do |core|
    core.ios.source_files = 'Source/*.{h,m}'
    core.watchos.source_files = 'Source/*.{h,m}'
    core.osx.source_files = 'Source/MMWormhole.{h,m}', 'Source/MMWormholeFileTransiting.{h,m}', 'Source/MMWormholeCoordinatedFileTransiting.{h,m}', 'Source/MMWormholeTransiting.h'
  end  
end
