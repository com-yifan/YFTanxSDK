#
# Be sure to run `pod lib lint YFTanxSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'YFTanxSDK'
    s.version          = '3.5.2-1'
    s.summary          = 'A short description of YFTanxSDK.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/com-yifan/YFTanxSDK.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'aiken' => '576661787@qq.com' }
    s.source           = { :git => 'https://github.com/com-yifan/YFTanxSDK.git', :tag => s.version.to_s }
    
    s.platform = :ios, "12.0"
     s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO', 'VALID_ARCHS' => valid_archs.join(' '), 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
   s.user_target_xcconfig = { 'ENABLE_BITCODE' => 'NO', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.frameworks = 'AdSupport','CoreMotion','CoreTelephony','SystemConfiguration','WebKit'
    s.libraries = 'resolv','sqlite3','z'
    
    s.default_subspec = 'YFTanxSDK'
    
    s.subspec 'YFTanxSDK' do |ss|
        ss.vendored_frameworks = 'YFTanxSDK/SDK/*.framework'
        ss.resource = 'YFTanxSDK/SDK/*.bundle'
    end
    
end
