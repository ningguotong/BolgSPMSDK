#
# Be sure to run `pod lib lint BolgSPMSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BolgSPMSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of BolgSPMSDK.'
 
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/patricelee/BolgSPMSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'patricelee' => '123916376+ningguotong@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/patricelee/BolgSPMSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/BolgSPMSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BolgSPMSDK' => ['BolgSPMSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'SnapKit', '~> 5.0.1'
end
