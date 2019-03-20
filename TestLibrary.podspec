Pod::Spec.new do |s|
  s.name         = "TestLibrary"
  s.version      = "0.1.1"
  s.summary      = "Test CocoaPods libraru"

  s.description  = <<-DESC
                   Test CocoaPods$
                   DESC
  s.homepage     = "https://github.com/olxios/cocoapods-test"
  s.license      = {
    :type => "MIT",
    :file => "LICENSE"
  }
  s.authors      = { "Olxios" => "olxios" }
  s.platform     = :ios, :osx
  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.11"
  s.source       = {
    :git => "https://github.com/olxios/cocoapods-test.git",
    :tag => s.version.to_s,
    :submodules => true
  }

  s.pod_target_xcconfig = { 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO' }
  s.default_subspecs ='app-lib'

  s.header_dir = "TestLibrary"

  s.subspec 'app-lib' do |app|
        app.source_files = "TestLibrary/**/*.{h,m}"
        app.ios.public_header_files = "TestLibrary/public/*.h"
        app.requires_arc = true
  end
end


