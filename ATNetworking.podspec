Pod::Spec.new do |s|
  s.name         = "ATNetworking"

  s.version      = "1.0.1"

  s.summary      = "Lightweight networking library for consuming RESTful JSON APIs."

  s.homepage     = "https://github.com/adtrade/ATNetworking"

	s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }

  s.author       = { "williamlocke" => "williamlocke@me.com" }

  s.source       = { :git => "https://github.com/adtrade/ATNetworking.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'

  s.source_files =  'Classes/**/*.[h,m]'

  s.requires_arc = true
end
