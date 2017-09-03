Pod::Spec.new do |s|
  s.name         = "LineShareKit"
  s.version      = "0.0.4"
  s.summary      = "Share text or image to Line from your apps written in Swift"
  s.homepage     = "https://github.com/JaminZhou/LineShareKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "JaminZhou" => "zhoujiamin1992@gmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/JaminZhou/LineShareKit.git", :tag => s.version }
  s.source_files  = ["Sources/LineShareKit.swift","Sources/LineShareKit.h"]
  s.public_header_files = ["Sources/LineShareKit.h"]
  s.requires_arc = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }
end
