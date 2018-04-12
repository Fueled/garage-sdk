Pod::Spec.new do |s|  
    s.name              = 'Garage-SDK'
    s.version           = "#{File.read('RELEASE').chomp}"
    s.summary           = 'Garage is a Swift Framework that helps product managers and the QA team to track bugs and send them to Jira.'
    s.homepage          = 'https://fueled.com/'

    s.author            = { 'Name' => 'Fueled' }
    s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :http => "https://github.com/Fueled/garage-sdk/releases/download/#{s.version}/Garage.zip" }

    s.ios.deployment_target = '9.0'
    s.ios.vendored_frameworks = 'Garage.framework'
end
