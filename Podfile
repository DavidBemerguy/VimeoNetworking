use_frameworks!

workspace 'VimeoNetworking'
project 'VimeoNetworkingExample-iOS/VimeoNetworkingExample-iOS.xcodeproj'

def shared_pods
    pod 'AFNetworking', '3.1.0'
    pod 'SwiftLint', '0.25.1'
    pod 'VimeoNetworking', :path => '../VimeoNetworking'
end

target 'VimeoNetworkingExample-iOS' do
    platform :ios, '8.0'
    shared_pods

    target 'VimeoNetworkingExample-iOSTests' do
        inherit! :search_paths
        platform :ios, '10.1'
        pod 'OHHTTPStubs/Swift', '6.0.0'
        pod 'VimeoTestsSupport', :path => '../VimeoTestsSupport'
	end
end

target 'VimeoNetworkingExample-tvOS' do
    platform :tvos, '9.0'
    shared_pods

    target 'VimeoNetworkingExample-tvOSTests' do
        inherit! :search_paths        
        platform :tvos, '10.0'
        pod 'OHHTTPStubs/Swift', '6.0.0'
        pod 'VimeoTestsSupport', :path => '../VimeoTestsSupport'
	end
end
