#
# Be sure to run `pod lib lint MOGOpenBookSegue.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MOGOpenBookSegue"
  s.version          = "1.0.1"
  s.summary          = "MOGOpenBookSegue is custom segue like iBooks open animation."
  s.description      = <<-DESC
                       # MOGOpenBookSegue
                       * This is custom segue like iBooks open animation.
                       DESC
  s.homepage         = "http://blog.mogmet.com/"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "mogmet" => "mogmet@gmail.com" }
  s.source           = { :git => "https://github.com/mogmet/MOGOpenBookSegue.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mogmet'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'MOGOpenBookSegue' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'QuartzCore'
  # s.dependency 'AFNetworking', '~> 2.3'
end
