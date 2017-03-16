Pod::Spec.new do |s|
  s.name             = 'STKit'
  s.version          = '1.0'
  s.summary          = '快速开发'
  s.description      = '一些有用的类加快app开发，非常全面，是UIKit、Foundation的扩展'

  s.homepage         = 'https://github.com/STShenZhaoliang'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shentian' => '409178030@qq.com' }

  s.source           = { :git => 'https://github.com/STShenZhaoliang/STKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'STKit/STKit/**/*.{h,m}'
  s.public_header_files = 'STKit/STKit/**/*.{h}'
end
