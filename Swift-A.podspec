#
# Be sure to run `pod lib lint Swift-A.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Swift-A'
  s.version          = '1.0.0'
  s.summary          = '收集一些可用的常用方法，方便以后集成，可直接使用'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/huangshuigen/Swift-A'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'huangshuigen' => 'huangshuigenoppa@163.com' }
  s.source           = { :git => 'https://github.com/huangshuigen/Swift-A.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.subspec 'Source' do |ss|
    ss.source_files = 'Swift-A/Source/Core', 'Swift-A/Source'
    ss.framework = 'UIKit'
    end
end
