Pod::Spec.new do |s|

    s.name         = "iOSVectorIcons"
    s.version      = "1.0.0"
    s.summary      = "iOSVectorIcons"
    s.homepage     = "https://github.com/dinhquan/iOSVectorIcons"
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { 'Dinh Quan' => 'dinhquan191@gmail.com' }
    s.platform     = :ios
    s.source       = { :git => "https://github.com/dinhquan/iOSVectorIcons.git", :tag => s.version }
    s.source_files = 'Sources/*.swift'
    s.resources = 'Sources/iOSVectorIcons/Resources/**/*.{ttf}'
    s.ios.deployment_target = "10.0"
    s.swift_version = "5.0"
  
  end