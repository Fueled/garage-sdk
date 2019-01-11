Pod::Spec.new do |s|  
    s.name              = 'Garage'
    s.version           = "#{File.read('RELEASE').chomp}"
    s.summary           = 'The simplest way to report bugs and collect feedback in your apps.'
    s.homepage          = 'https://garage.fueled.com'

    s.author            = { 'Fueled' => 'garage@fueled.com' }
    s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :http => "https://github.com/Fueled/garage-sdk/releases/download/#{s.version}/Garage.zip" }

    s.ios.deployment_target = '10.0'
    s.ios.vendored_frameworks = 'Garage.framework'
end
