Pod::Spec.new do |s|
  s.name	 = 'ARView'
  s.version	 = '0.0.1'
  s.summary	 = 'Customized IB Designables UIView for iOS'
  s.homepage     = 'https://github.com/andreyrebrik/ARView-iOS'
  s.license      = 'MIT'
  s.author       = { "Andrey Rebrik" => "andrey.rebrik@gmail.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/andreyrebrik/ARView-iOS.git', :tag => s.version }
  s.requires_arc = true

  s.public_header_files	= 'ARView/ARView.h'
  s.source_files  	= 'ARView/ARView.h'
end
