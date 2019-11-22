# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'SwiftServerTest' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'SBTUITestTunnelServer'
  pod 'GCDWebServer', :inhibit_warnings => true

  # Pods for SwiftStubs

  target 'SwiftServerTestTests' do
    inherit! :search_paths
#    pod 'OHHTTPStubs/Swift'
#    pod 'OHHTTPStubs'
#    pod 'Hippolyte', '~> 1.1.0'
#    pod 'Mockingjay'
  end

  target 'SwiftServerTestUITests' do
    inherit! :search_paths
    pod 'Swifter'
#    pod 'SBTUITestTunnel'
#    pod 'Embassy', '~> 4.1.0'
#    pod 'EnvoyAmbassador'
    
    pod 'SBTUITestTunnelClient'

  end
  post_install do |installer|
      installer.pods_project.targets.each do |target|
          target.build_configurations.each do |config|
              if config.name == 'DEBUG' # the name of your build configuration
                  config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)', 'ENABLE_UITUNNEL=1']
              end
          end
      end
  end
end
